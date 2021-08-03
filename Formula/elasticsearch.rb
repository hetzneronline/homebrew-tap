class Elasticsearch < Formula
  desc "Distributed search & analytics engine"
  homepage "https://www.elastic.co/products/elasticsearch"
  url "https://software-installer.hetzner.com/mirror/elasticsearch/7.10.2/elasticsearch-7.10.2-linux-x86_64.tar.gz"
  version "7.10.2"
  sha256 "3b7ae3b6f5f2248fa4441aa2cf653638c9022108f813e0081da13c378a35e11e"

  def cluster_name
    "elasticsearch_#{ENV["USER"]}"
  end

  def install
    # Install everything else into package directory
    libexec.install "bin", "config", "lib", "modules"

    # Set up Elasticsearch for local development:
    inreplace "#{libexec}/config/elasticsearch.yml" do |s|
      # 1. Give the cluster a unique name
      s.gsub!(/#\s*cluster\.name\: .*/, "cluster.name: #{cluster_name}")

      # 2. Configure paths
      s.sub!(%r{#\s*path\.data: /path/to.+$}, "path.data: #{var}/lib/elasticsearch/")
      s.sub!(%r{#\s*path\.logs: /path/to.+$}, "path.logs: #{var}/log/elasticsearch/")
    end

    # Update log path
    inreplace "#{libexec}/config/jvm.options", %r{logs/gc.log}, "#{var}/log/elasticsearch/gc.log"

    # Move config files into etc
    (etc/"elasticsearch").install Dir[libexec/"config/*"]
    (libexec/"config").rmtree

    inreplace libexec/"bin/elasticsearch-env",
              "if [ -z \"$ES_PATH_CONF\" ]; then ES_PATH_CONF=\"$ES_HOME\"/config; fi",
              "if [ -z \"$ES_PATH_CONF\" ]; then ES_PATH_CONF=\"#{etc}/elasticsearch\"; fi"

    bin.install libexec/"bin/elasticsearch",
                libexec/"bin/elasticsearch-keystore",
                libexec/"bin/elasticsearch-plugin",
                libexec/"bin/elasticsearch-shard"
    # use proper JAVA_HOME
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end

  def post_install
    # Make sure runtime directories exist
    (var/"lib/elasticsearch/#{cluster_name}").mkpath
    (var/"log/elasticsearch").mkpath
    ln_s etc/"elasticsearch", libexec/"config"
    (var/"elasticsearch/plugins").mkpath
    ln_s var/"elasticsearch/plugins", libexec/"plugins"
  end

  def caveats
    s = <<~EOS
      Data:    #{var}/lib/elasticsearch/#{cluster_name}/
      Logs:    #{var}/log/elasticsearch/#{cluster_name}.log
      Plugins: #{var}/elasticsearch/plugins/
      Config:  #{etc}/elasticsearch/
    EOS

    s
  end
end
