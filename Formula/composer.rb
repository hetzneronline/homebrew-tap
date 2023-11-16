#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.6.5/composer.phar"
  sha256 "9a18e1a3aadbcb94c1bafd6c4a98ff931f4b43a456ef48575130466e19f05dd6"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
