#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodbbuster < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://software-installer.hetzner.com/mirror/mongodb/4.4.7/mongodb-linux-x86_64-debian10-4.4.7.tgz"
  sha256 "d43d14091f753be2e12e0460f052fd2c6e84368fae4bb59531553c8eab61cef2"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongos"
    bin.install "bin/mongo"
  end
end
