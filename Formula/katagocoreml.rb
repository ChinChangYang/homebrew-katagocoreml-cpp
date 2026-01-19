class Katagocoreml < Formula
  desc "Convert KataGo neural networks to Core ML format"
  homepage "https://github.com/chinchangyang/katagocoreml-cpp"
  url "https://github.com/chinchangyang/katagocoreml-cpp/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9b6822b3cb424e8ee6389db9417542ccf05874518360cb3a57660c1d0d670270"
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
