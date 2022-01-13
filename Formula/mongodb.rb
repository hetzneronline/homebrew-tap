#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodb < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian10-5.0.5.tgz"
  sha256 "62363b7c608e9f6ae353fe426c1d7c43b0e3c421a982fc1a105dd6ad605dda10"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
    bin.install "bin/mongo"
  end
end
