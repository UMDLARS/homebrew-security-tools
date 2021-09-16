class Hexdiff < Formula
  desc "Hexadecimal file difference tool"
  homepage "http://tboudet.free.fr/hexdiff/"
  url "http://tboudet.free.fr/hexdiff/hexdiff.tar.gz"
  version "0.0.50"
  sha256 "cbd1904a9dec71459345a1ed4b5fe46e414b4f4e53fedc27f30606beb4672fc6"
  license "WTFPL"

  def install
    inreplace "sel_file.c", "char *strdup(char *);", ""
    system "make"
    bin.install "hexdiff" => "hexdiff"
    man.mkpath
    man1.install "hexdiff.1"
  end

  test do
    system "false"
  end
end
