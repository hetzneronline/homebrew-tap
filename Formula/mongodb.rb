#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodb < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian10-6.0.4.tgz"
  sha256 "7142d5e6834a748fe4f61001b8f1d2a6b86da8df89e56a5f7ec9b44798c23ae9"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
    bin.install "bin/mongo"
  end
end
