class Chainlink < Formula
  desc "Lean issue tracker CLI for AI-assisted development sessions"
  homepage "https://github.com/dollspace-gay/chainlink"
  url "https://github.com/dollspace-gay/chainlink/archive/48884f9b1c98dc70282d11ad953a0a7a48a1b6cc.tar.gz"
  sha256 "0cb81123112f04fac69ca888e18a81bf12c7c6b1d6f0cf277db8993e775b3fef"
  version "0.1.3-48884f9"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Cargo.toml lives in the chainlink/ subdirectory
    cd "chainlink" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match "chainlink", shell_output("#{bin}/chainlink --help 2>&1", 0)
  end
end
