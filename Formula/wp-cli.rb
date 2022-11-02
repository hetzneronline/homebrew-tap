#
# Copyright 2022 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class WpCli < Formula
  desc "Command-line interface for WordPress"
  homepage "https://wp-cli.org/"
  url "https://github.com/wp-cli/wp-cli/releases/download/v2.7.1/wp-cli-2.7.1.phar"
  sha256 "bbf096bccc6b1f3f1437e75e3254f0dcda879e924bbea403dff3cfb251d4e468"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "wp-cli-#{version}.phar" => "wp"
  end

end
