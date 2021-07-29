#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://software-installer.hetzner.com/mirror/composer/2.1.5/composer.phar"
  sha256 "be95557cc36eeb82da0f4340a469bad56b57f742d2891892dcb2f8b0179790ec"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
