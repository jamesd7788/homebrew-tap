class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/releases/download/v0.5.0/mkd-v0.5.0-arm64.tar.gz"
  version "0.5.0"
  sha256 "f4b8197d3388f8d31d0bc2f2ec011845e1c1f9102099e7f7def36999ecf9692d"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "mkd"
    bin.install "mkd_mkd.bundle"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/mkd 2>&1", 1)
  end
end
