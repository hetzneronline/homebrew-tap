#
# Copyright 2022 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class WpCli < Formula
  desc "Command-line interface for WordPress"
  homepage "https://wp-cli.org/"
  url "https://github.com/wp-cli/wp-cli/releases/download/v2.9.0/wp-cli-2.9.0.phar"
  sha256 "af6b7ccc21ed0907cb504db5a059f0e120117905a6017bfdd4375cee3c93d864"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "wp-cli-#{version}.phar" => "wp"
  end

end
