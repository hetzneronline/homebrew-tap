#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Ffmpeg < Formula
  desc "FFmpeg is a free software project that produces libraries and programs for handling multimedia data."
  homepage "https://ffmpeg.org/"
  url "https://software-installer.hetzner.com/mirror/ffmpeg/4.4/ffmpeg-release-amd64-static.tar.xz"
  sha256 "ccac14abf72e8a451d823ed09b1ea953b0bdf2814ab10fc153c753afd5fb0a20"

  def install
    bin.install "ffmpeg"
    bin.install "ffprobe"
  end
end
