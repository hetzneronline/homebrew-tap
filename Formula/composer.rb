#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://software-installer.hetzner.com/mirror/composer/2.1.12/composer.phar"
  sha256 "ae3ec292dd04b4e468aea1e5db4d085f169d8a803aabeb99707f69e9454bf218"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
