#
# Copyright 2021 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodb < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://software-installer.hetzner.com/mirror/mongodb/5.0.4/mongodb-linux-x86_64-debian10-5.0.4.tgz"
  sha256 "1c8b7ae5c8f3bdcd47621ab615489db64b8ab8e1643a88edb3ab2992670908d4"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
    bin.install "bin/mongo"
  end
end
