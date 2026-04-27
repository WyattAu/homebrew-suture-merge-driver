class SutureMergeDriver < Formula
  desc "Universal semantic merge driver — conflict-free merges for 17+ file formats"
  homepage "https://github.com/WyattAu/suture"
  version "5.0.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/WyattAu/suture/releases/download/v#{version}/suture-x86_64-macos.tar.gz"
      sha256 "c80bb9994aa4ae72995a17b15249e40a1f68828db01b134dd2f662ecc8a5d35b"
    end
    on_arm do
      url "https://github.com/WyattAu/suture/releases/download/v#{version}/suture-aarch64-macos.tar.gz"
      sha256 "d65102d6c23817437c2e42000dd4e912242058888735900ee89cad6e432f94a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/WyattAu/suture/releases/download/v#{version}/suture-x86_64-linux.tar.gz"
      sha256 "a63c6143cc88b8c1e8a4ba16aa5b5d67c946321201cea872e4ed683913176642"
    end
  end

  def install
    bin.install "suture"
    # Generate shell completions
    generate_completions_from_executable(bin/"suture", "completions")
    # Generate man pages
    system bin/"suture", "manpages", "--directory", man1 if (bin/"suture").exist?
  end

  test do
    assert_match "suture #{version}", shell_output("#{bin}/suture --version")
    # Test that it can initialize a repo
    (testpath/"test").mkdir
    cd "test" do
      system bin/"suture", "init"
      assert_predicate testpath/".suture", :exist?
    end
  end
end
