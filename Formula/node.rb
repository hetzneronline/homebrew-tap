#
# Copyright 2023 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Node < Formula
  desc "Platform built on V8 to build network applications"
  homepage "https://nodejs.org/"
  url "https://nodejs.org/dist/v18.13.0/node-v18.13.0-linux-x64.tar.xz"
  sha256 "7f5d6922a91986ef059ba8a4396aa435440adacfe6fc6fab60a857c8f2cf5e7a"

  def install
    bin.install "bin/node"
    
    node_modules = HOMEBREW_PREFIX/"lib/node_modules"
    node_modules.mkpath
    cp_r "lib/node_modules/npm", node_modules
    ln_sf node_modules/"npm/bin/npm-cli.js", HOMEBREW_PREFIX/"bin/npm"
    ln_sf node_modules/"npm/bin/npx-cli.js", HOMEBREW_PREFIX/"bin/npx"
  end
end
