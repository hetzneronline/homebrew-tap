#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Ffmpeg < Formula
  desc "FFmpeg is a free software project that produces libraries and programs for handling multimedia data."
  homepage "https://ffmpeg.org/"
  url "https://github.com/hetzneronline/homebrew-packages/raw/master/ffmpeg/ffmpeg-4.1.3-amd64-static.tar.gz"
  sha256 "e32eb52386cfcbd18e13aa25165d178ee1d9c9f516e5ad2cbc445a4c40ed8891"
  version "4.1.3"

  def install
    bin.install "ffmpeg"
    bin.install "ffprobe"
  end
end
