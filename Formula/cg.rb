class Cg < Formula
  desc "Terminal-native typed clipboard for AI-assisted developers"
  homepage "https://clipgate.github.io"
  version "0.1.4"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://clipgate.github.io/releases/v0.1.4/cg-aarch64-apple-darwin.tar.gz"
    sha256 "f56af4c53ab08dc2f74dc1ce0ca310816b48eae7f481cf98f6fc7b5cd5d68a3d"
  elsif OS.mac?
    url "https://clipgate.github.io/releases/v0.1.4/cg-x86_64-apple-darwin.tar.gz"
    sha256 "ee145e14cf489d5f4474345f3f65de8496320c92cf4fb3a4478c782ec1351a1c"
  elsif Hardware::CPU.arm?
    url "https://clipgate.github.io/releases/v0.1.4/cg-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3f358b57d544704934097b63cd2305a7e2e58354883fc692c9d4836007604c61"
  else
    url "https://clipgate.github.io/releases/v0.1.4/cg-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "24c60c9e537f80226daba1ac013c98cf1c004362b19c994d0ac1bf7ff56f5997"
  end

  def install
    bin.install "cg"
  end

  test do
    assert_match "Clip Gate", shell_output("#{bin}/cg version")
  end
end
