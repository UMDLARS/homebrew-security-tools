# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Hexdiff < Formula
  desc ""
  homepage "http://tboudet.free.fr/hexdiff/"
  url "http://tboudet.free.fr/hexdiff/hexdiff.tar.gz"
  version "0.0.50"
  sha256 "cbd1904a9dec71459345a1ed4b5fe46e414b4f4e53fedc27f30606beb4672fc6"
  license "Demerdenzizicht"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    inreplace "sel_file.c", "char *strdup(char *);", ""
    system "make"
    bin.install "hexdiff" => "hexdiff"
    man.mkpath
    man1.install "hexdiff.1"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test hexdiff`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
