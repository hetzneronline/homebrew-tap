#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.3.5/composer.phar"
  sha256 "3b3b5a899c06a46aec280727bdf50aad14334f6bc40436ea76b07b650870d8f4"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
