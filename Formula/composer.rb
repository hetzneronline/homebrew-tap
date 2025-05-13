#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.8.8/composer.phar"
  sha256 "957263e284b9f7a13d7f475dc65f3614d151b0c4dcc7e8761f7e7f749447fb68"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
