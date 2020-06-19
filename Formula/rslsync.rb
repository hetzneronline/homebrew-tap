#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Rslsync < Formula
  desc "Resilio Sync is a proprietary file sharing system that relies on the BitTorrent protocol."
  homepage "https://www.resilio.com/"
  url "https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz"
  sha256 "756f3532371a8c3c5378e7dd58600b6988e003476b50cd9179f1b2f31abfb2bd"
  version "2.7.1"

  def install
    bin.install "rslsync"
  end
end
