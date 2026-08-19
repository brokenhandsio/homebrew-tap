# This file is managed by the release workflow in brokenhandsio/kiln.
# Manual edits will be overwritten on the next tagged release.
class Kiln < Formula
  desc "Documentation website generator written in Swift"
  homepage "https://github.com/brokenhandsio/kiln"
  url "https://github.com/brokenhandsio/kiln/releases/download/v1.9.0/kiln-1.9.0-macos-arm64.tar.gz"
  sha256 "8473970e5a40a7407e18745feb3a9c08ab97d8735839ca73a785a8140c49ec24"
  version "1.9.0"
  license "MIT"

  # The release binary is built for Apple Silicon only.
  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    libexec.install "kiln"
    libexec.install Dir["*.bundle"]
    bin.install_symlink libexec/"kiln"
    prefix.install "LICENSE" if File.exist?("LICENSE")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
