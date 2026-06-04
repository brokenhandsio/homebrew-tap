# This file is managed by the release workflow in brokenhandsio/kiln.
# Manual edits will be overwritten on the next tagged release.
#
# Until the first release (`git tag v0.1.0 && git push origin v0.1.0`) is cut,
# the url/sha256 below are placeholders and `brew install` will not work yet.
class Kiln < Formula
  desc "Documentation website generator written in Swift"
  homepage "https://github.com/brokenhandsio/kiln"
  url "https://github.com/brokenhandsio/kiln/releases/download/v0.0.0/kiln-0.0.0-macos-arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "0.0.0"
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
