#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.4.4/composer.phar"
  sha256 "c252c2a2219956f88089ffc242b42c8cb9300a368fd3890d63940e4fc9652345"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
