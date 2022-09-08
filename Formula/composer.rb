#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.4.1/composer.phar"
  sha256 "ea8cf6308ec76ff9645c3818841a7588096b9dc2767345fbd4bd492dd8a6dca6"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
