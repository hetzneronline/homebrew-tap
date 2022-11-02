#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodb < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian10-5.0.13.tgz"
  sha256 "cea629bcda8224613256101cd947f8e2f0d41004061c95ab94f477229242df88"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
    bin.install "bin/mongo"
  end
end
