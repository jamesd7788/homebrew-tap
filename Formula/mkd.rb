class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/releases/download/v0.6.1/mkd-v0.6.1-arm64.tar.gz"
  version "0.6.1"
  sha256 "e27dab481eb4c48d2b3af8991c409c134863d78ac771626b1b62d0706fad47d4"
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
