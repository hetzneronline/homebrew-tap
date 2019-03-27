#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Rslsync < Formula
  desc "Resilio Sync is a proprietary file sharing system that relies on the BitTorrent protocol."
  homepage "https://www.resilio.com/"
  url "https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz"
  sha256 "9f6adeaea9a6bdbdf232bc585929816aeeeb3bd654252cabd99f1edb753b9384"
  version "2.6.3"

  def install
    bin.install "rslsync"
  end
end
