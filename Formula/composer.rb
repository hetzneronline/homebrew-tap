#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.10.2/composer.phar"
  sha256 "5ee7125f8a30a34d246cefdc0bc85b8a783b28f2aec968994118512350d28027"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
