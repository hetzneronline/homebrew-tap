#
# Copyright 2023 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongosh < Formula
  desc "MongoDB Shell to connect, configure, query, and work with your MongoDB database"
  homepage "https://github.com/mongodb-js/mongosh#readme"
  url "https://downloads.mongodb.com/compass/mongosh-1.6.2-linux-x64.tgz"
  sha256 "7af27bc9fe07f5d8a8d72506319d28baeb8cbeacb9aa706246575ed9524e26e9"

  def install
    bin.install "bin/mongosh"
  end
end
