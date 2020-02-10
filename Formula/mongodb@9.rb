#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class MongodbAT9 < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://downloads.mongodb.org/linux/mongodb-linux-x86_64-debian92-4.3.3.tgz"
  sha256 "78972c295d28977fdba11cda787e8564038ae758f883fd47421e98b7dd727474"
  version "4.3.3"

  def install
    bin.install "bin/mongod"
  end
end
