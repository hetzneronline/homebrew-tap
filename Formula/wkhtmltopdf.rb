#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Wkhtmltopdf < Formula
  desc "Command line tool to render HTML into PDF and various image formats using the Qt WebKit rendering engine."
  homepage "https://wkhtmltopdf.org/"
  url "https://software-installer.hetzner.com/mirror/wkhtmltopdf/0.12.6/wkhtmltox_0.12.6-1_amd64.tar.gz"
  sha256 "bc8b8c802941c8e37fdee6a418cfd11d7f5e4537029b145e88b76016329e335f"

  def install
    bin.install "wkhtmltopdf"
    bin.install "wkhtmltoimage"
  end
end
