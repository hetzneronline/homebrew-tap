#
# Copyright 2022 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class WpCli < Formula
  desc "Command-line interface for WordPress"
  homepage "https://wp-cli.org/"
  url "https://github.com/wp-cli/wp-cli/releases/download/v2.12.0/wp-cli-2.12.0.phar"
  sha256 "ce34ddd838f7351d6759068d09793f26755463b4a4610a5a5c0a97b68220d85c"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "wp-cli-#{version}.phar" => "wp"
  end

end
