class Openclaudia < Formula
  desc "Open-source universal agent harness — Claude Code-like capabilities for any AI"
  homepage "https://github.com/dollspace-gay/OpenClaudia"
  url "https://github.com/dollspace-gay/OpenClaudia/archive/8b29d1ad54bc3aff932e9c296ce2de23e888f29d.tar.gz"
  sha256 "658b0197ba764f588dd76e90b908dbb2cf4c6c732f69309e22299a42ef4d35ad"
  version "0.1.0-8b29d1a"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Build without headless_chrome (downloads a Chrome binary at runtime,
    # violating Homebrew's no-network-during-build policy). Web search via
    # reqwest/DuckDuckGo still works without this feature.
    system "cargo", "install", *std_cargo_args, "--no-default-features"
  end

  test do
    assert_match "openclaudia", shell_output("#{bin}/openclaudia --help 2>&1", 0)
  end
end
