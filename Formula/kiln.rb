# This file is managed by the release workflow in brokenhandsio/kiln.
# Manual edits will be overwritten on the next tagged release.
class Kiln < Formula
  desc "Documentation website generator written in Swift"
  homepage "https://github.com/brokenhandsio/kiln"
  url "https://github.com/brokenhandsio/kiln/releases/download/v1.3.1/kiln-1.3.1-macos-arm64.tar.gz"
  sha256 "408fd6ea5ec428e93c2cf035ea7905c647f2d150e1b667cc77795b1e4a34f0d2"
  version "1.3.1"
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
