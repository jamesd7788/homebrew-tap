class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/releases/download/v0.3.0/mkd-v0.3.0-arm64.tar.gz"
  version "0.3.0"
  sha256 "7cbae8a238b0b108b2cc1aed83ecc04525fd892e0bb5ff3e44713ac60bd708b5"
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
