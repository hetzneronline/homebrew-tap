#
# Copyright 2019 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class Mongodbbuster < Formula
  desc "MongoDB is a document-oriented database."
  homepage "https://www.mongodb.com/"
  url "https://downloads.mongodb.org/linux/mongodb-linux-x86_64-debian10-4.3.3.tgz"
  sha256 "541e8a300ba0374e31232090fcb6c3167733eeeb8fcce31b69bbf9dc384362d3"
  version "4.3.3"

  def install
    bin.install "bin/mongod"
  end
end
