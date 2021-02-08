#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodbbuster < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://downloads.mongodb.org/linux/mongodb-linux-x86_64-debian10-4.4.3.tgz"
  sha256 "b7b2566e38efa2040921023e73cc363803d5ea55859f06e0f524030463bf279c"
  version "4.4.3"

  def install
    bin.install "bin/mongod"
    bin.install "bin/mongo"
  end
end
