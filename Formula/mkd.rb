class Mkd < Formula
  desc "Minimal macOS markdown viewer with live reload"
  homepage "https://github.com/jamesd7788/mkd"
  url "https://github.com/jamesd7788/mkd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "75fd3e27f93c880f7791883d4686fbe87f953ee27c20561b9f8918f76de473a7"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/mkd"
    # resource bundle must sit next to binary for Bundle.module to find it
    bin.install ".build/release/mkd_mkd.bundle"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/mkd 2>&1", 1)
  end
end
