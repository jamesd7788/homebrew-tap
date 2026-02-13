class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/releases/download/v0.2.0/mkd-v0.2.0-arm64.tar.gz"
  sha256 "c15c27c64f197f67ad291c104da01f89eb7ba0ff1fe13d8a757e084053354c6a"
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
