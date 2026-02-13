class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/releases/download/v0.2.0/mkd-v0.2.0-arm64.tar.gz"
  sha256 "f21f13d1e5eb023ced94afe79b6602a37e1c55ec2e3e1c44c1cd7a82a2c7a0d9"
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
