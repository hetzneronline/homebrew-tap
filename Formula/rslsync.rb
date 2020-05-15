#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Rslsync < Formula
  desc "Resilio Sync is a proprietary file sharing system that relies on the BitTorrent protocol."
  homepage "https://www.resilio.com/"
  url "https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz"
  sha256 "ce1415403e089350bf6966af08d5822defd3e6d4a1cb902abc28d6f7fc247c9f"
  version "2.7"

  def install
    bin.install "rslsync"
  end
end
