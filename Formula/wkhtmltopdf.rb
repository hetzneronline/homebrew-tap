#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Wkhtmltopdf < Formula
  desc "Command line tool to render HTML into PDF and various image formats using the Qt WebKit rendering engine."
  homepage "https://wkhtmltopdf.org/"
  url "https://github.com/hetzneronline/homebrew-packages/raw/master/wkhtmltopdf/wkhtmltopdf-0.12.5-1.tar.gz"
  sha256 "a3dab1b55e5be50076d35778d9e0aa8f8fc14c26ed4f1853e0a590860a6015b7"
  version "0.12.5-1"

  def install
    bin.install "wkhtmltopdf"
  end
end
