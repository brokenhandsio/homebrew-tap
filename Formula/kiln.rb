# This file is managed by the release workflow in brokenhandsio/kiln.
# Manual edits will be overwritten on the next tagged release.
class Kiln < Formula
  desc "Documentation website generator written in Swift"
  homepage "https://github.com/brokenhandsio/kiln"
  url "https://github.com/brokenhandsio/kiln/releases/download/v0.0.3/kiln-0.0.3-macos-arm64.tar.gz"
  sha256 "8e1849bb2372ea33d55c009fd029cb059df0724e9a7eb2c5dd6d8add4cdd7e5e"
  version "0.0.3"
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
