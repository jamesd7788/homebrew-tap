class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/releases/download/v0.6.0/mkd-v0.6.0-arm64.tar.gz"
  version "0.6.0"
  sha256 "0db5378d5b0f86151bc945b5cd3d49769c9fbc7f04a380f4324143f289cfa83b"
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
