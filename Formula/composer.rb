#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.5.4/composer.phar"
  sha256 "91ce6cbf9463eae86ae9d5c21d42faa601a519f3fbb2b623a55ee24678079bd3"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
