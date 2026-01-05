class Katagocoreml < Formula
  desc "Convert KataGo neural networks to Core ML format"
  homepage "https://github.com/chinchangyang/katagocoreml-cpp"
  url "https://github.com/chinchangyang/katagocoreml-cpp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "33110f4fb1cf3e1023644bfd57ca9963dbbc5aa1d8433d896fc76a5868097b26"
  license "BSD-3-Clause"

  depends_on "cmake" => :build
  depends_on "protobuf"
  depends_on "abseil"
  depends_on :macos

  uses_from_macos "zlib"

  def install
    system "cmake", "-S", ".", "-B", "build",
           *std_cmake_args,
           "-DKATAGOCOREML_BUILD_TESTS=OFF"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build", "--prefix", prefix
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/katago2coreml --help", 0)
  end
end
