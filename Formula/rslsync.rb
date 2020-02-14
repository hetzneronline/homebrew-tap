#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Rslsync < Formula
  desc "Resilio Sync is a proprietary file sharing system that relies on the BitTorrent protocol."
  homepage "https://www.resilio.com/"
  url "https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz"
  sha256 "4891d7fa33bfe00a6ff907ef3e0fa601647105fa318a53a53f1795a7a49e3eb0"
  version "2.6.4"

  def install
    bin.install "rslsync"
  end
end
