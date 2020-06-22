#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Ffmpeg < Formula
  desc "FFmpeg is a free software project that produces libraries and programs for handling multimedia data."
  homepage "https://ffmpeg.org/"
  url "https://github.com/hetzneronline/homebrew-packages/raw/master/ffmpeg/ffmpeg-4.3-amd64-static.tar.gz"
  sha256 "169adb3972c94a3f6516fa5775666f69fc2db48b144ffb06bae23b55b0cc0e84"
  version "4.3"

  def install
    bin.install "ffmpeg"
    bin.install "ffprobe"
  end
end
