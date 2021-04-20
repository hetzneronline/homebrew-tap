#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodbbuster < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://downloads.mongodb.org/linux/mongodb-linux-x86_64-debian10-4.4.5.tgz"
  sha256 "c62714a16a0392a87066ff3f5bfd9e15d8ffd57ba29688bbf2fa6c281ae6f1b9"
  version "4.4.5"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongo"
  end
end
