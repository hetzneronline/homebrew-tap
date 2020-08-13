#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodbbuster < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://downloads.mongodb.org/linux/mongodb-linux-x86_64-debian10-4.4.0.tgz"
  sha256 "3ca9c31ecdd642920f591ecc44cb2ab39e94ca3fb2725682fbd707c5bbe5c869"
  version "4.4.0"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongo"
  end
end
