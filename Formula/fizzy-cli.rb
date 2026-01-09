class FizzyCli < Formula
  desc "CLI for the Fizzy kanban board"
  homepage "https://github.com/tobiasbischoff/fizzy-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tobiasbischoff/fizzy-cli/releases/download/v0.1.0/fizzy-cli_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3636f7edf9a6c798a156c2dae252fda89831d518a80c862080093322e39deca5"
    else
      url "https://github.com/tobiasbischoff/fizzy-cli/releases/download/v0.1.0/fizzy-cli_v0.1.0_darwin_amd64.tar.gz"
      sha256 "33055a1a0d29d3d9d39dd41239fc036bfda33570692cf2b06cb988941206e844"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tobiasbischoff/fizzy-cli/releases/download/v0.1.0/fizzy-cli_v0.1.0_linux_arm64.tar.gz"
      sha256 "1f97519eae07e1c9a03db6fd7835afbc3b387f78c1b970daf5053152be0f0516"
    else
      url "https://github.com/tobiasbischoff/fizzy-cli/releases/download/v0.1.0/fizzy-cli_v0.1.0_linux_amd64.tar.gz"
      sha256 "3cc0a241d61c19e50973cde57bccbfb465e0e424e4aeb356eb6a95ab7d1cf09c"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "fizzy-cli_v0.1.0_darwin_arm64/fizzy-cli" => "fizzy-cli"
    elsif OS.mac?
      bin.install "fizzy-cli_v0.1.0_darwin_amd64/fizzy-cli" => "fizzy-cli"
    elsif Hardware::CPU.arm?
      bin.install "fizzy-cli_v0.1.0_linux_arm64/fizzy-cli" => "fizzy-cli"
    else
      bin.install "fizzy-cli_v0.1.0_linux_amd64/fizzy-cli" => "fizzy-cli"
    end
  end

  test do
    system "#{bin}/fizzy-cli", "--help"
  end
end
