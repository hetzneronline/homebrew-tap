#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodb < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian11-7.0.3.tgz"
  sha256 "85be4f66ce3bb4a4c0439fb2b444574fc8ebb7959ebcd19b04e7b414438b3d5f"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
  end
end
