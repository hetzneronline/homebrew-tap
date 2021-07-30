#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Rslsync < Formula
  desc "Resilio Sync is a proprietary file sharing system that relies on the BitTorrent protocol."
  homepage "https://www.resilio.com/"
  url "https://software-installer.hetzner.com/mirror/rslsync/2.7.2/resilio-sync_x64.tar.gz"
  sha256 "0e9e92eb0deeb9314e9676275e91fdce6d6296b352637e7dc59eecb03f2d593d"

  def install
    bin.install "rslsync"
  end
end
