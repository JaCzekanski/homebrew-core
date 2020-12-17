class Bootterm < Formula
  desc "The terminal written for its users by its users"
  homepage "https://github.com/wtarreau/bootterm"
  url "https://github.com/wtarreau/bootterm/archive/v0.2.tar.gz"
  sha256 "5beef823c9655f09555bfe4a9ea64e81f51f10582f64655a0fe939a1542e53d3"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/bt", "-V"
  end
end
