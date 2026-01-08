class BambuCli < Formula
  desc "CLI for controlling BambuLab printers directly over MQTT/FTPS/camera"
  homepage "https://github.com/tobiasbischoff/bambu-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tobiasbischoff/bambu-cli/releases/download/v0.1.0/bambu-cli_darwin_arm64"
      sha256 "9d59a5a92a7885cd475b568f80bf406d1dc1dc887a3f1a33a67d4240b8c25ff9"
    else
      url "https://github.com/tobiasbischoff/bambu-cli/releases/download/v0.1.0/bambu-cli_darwin_amd64"
      sha256 "a8620203f6ed075314de7f6dc81f63657244d3d1e838598d81695f71f3d92aa6"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "bambu-cli_darwin_arm64" => "bambu-cli"
    else
      bin.install "bambu-cli_darwin_amd64" => "bambu-cli"
    end
  end

  test do
    system "#{bin}/bambu-cli", "--help"
  end
end
