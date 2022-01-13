#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.2.4/composer.phar"
  sha256 "ba04e246960d193237d5ed6542bd78456898e7787fafb586f500c6807af7458d"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
