class Varnish < Formula
  desc "High-performance HTTP accelerator"
  homepage "https://www.varnish-cache.org/"
  url "https://varnish-cache.org/_downloads/varnish-7.2.0.tgz"
  sha256 "1da8a97ed5f7b7d4d5e04fc5c96fc9a85cb3a20d076eba2b18951f4b306c9686"
  license "BSD-2-Clause"

  depends_on "docutils" => :build
  depends_on "pkg-config" => :build
  depends_on "python@3.10" => :build
  depends_on "sphinx-doc" => :build
  depends_on "pcre2"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--localstatedir=#{var}"
    system "make", "install"
    (etc/"varnish").install "etc/example.vcl" => "default.vcl"
    (var/"varnish").mkpath
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/varnishd -V 2>&1")
  end
end
