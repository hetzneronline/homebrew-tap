#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Composer < Formula
  desc "Dependency Manager for PHP"
  homepage "https://getcomposer.org/"
  url "https://getcomposer.org/download/2.5.1/composer.phar"
  sha256 "f1b94fee11a5bd6a1aae5d77c8da269df27c705fcc806ebf4c8c2e6fa8645c20"
  license "MIT"

  def install
    bin.install "composer.phar" => "composer"
  end
end
