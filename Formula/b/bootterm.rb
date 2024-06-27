class Bootterm < Formula
  desc "Terminal written for its users by its users"
  homepage "https://github.com/wtarreau/bootterm"
  url "https://github.com/wtarreau/bootterm/archive/refs/tags/v0.5.tar.gz"
  sha256 "95cc154236655082fb60e8cdae15823e4624e108b8aead59498ac8f2263295ad"
  license "MIT"
  head "https://github.com/wtarreau/bootterm.git", branch: "master"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/bt", "-h"
  end
end
