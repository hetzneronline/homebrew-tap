#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodb < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian10-5.0.8.tgz"
  sha256 "40d4c54de83313a6402173b64883e9be6a49c060d793d42d0f3c452b99331f61"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
    bin.install "bin/mongo"
  end
end
