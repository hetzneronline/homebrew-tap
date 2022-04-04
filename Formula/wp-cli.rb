#
# Copyright 2022 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class WpCli < Formula
  desc "Command-line interface for WordPress"
  homepage "https://wp-cli.org/"
  url "https://github.com/wp-cli/wp-cli/releases/download/v2.6.0/wp-cli-2.6.0.phar"
  sha256 "d166528cab60bc8229c06729e7073838fbba68d6b2b574504cb0278835c87888"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "wp-cli-#{version}.phar" => "wp"
  end

end
