#
# Copyright 2023 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Node < Formula
  desc "Platform built on V8 to build network applications"
  homepage "https://nodejs.org/"
  version "18.15.0"
  url "https://nodejs.org/dist/v18.15.0/node-v18.15.0-linux-x64.tar.xz"
  sha256 "c8c5fa53ce0c0f248e45983e86368e0b1daf84b77e88b310f769c3cfc12682ef"

  def install
    bin.install "bin/node"
    
    node_modules = HOMEBREW_PREFIX/"lib/node_modules"
    node_modules.mkpath
    cp_r "lib/node_modules/npm", node_modules
    ln_sf node_modules/"npm/bin/npm-cli.js", HOMEBREW_PREFIX/"bin/npm"
    ln_sf node_modules/"npm/bin/npx-cli.js", HOMEBREW_PREFIX/"bin/npx"
  end
end
