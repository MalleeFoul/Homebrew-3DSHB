# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Openctr < Formula
  desc "OpenCTR is a free and open-source, cross-platform SDK for developing homebrew for the Nintendo 3DS."
  homepage "https://openctr.github.io/"
  url "https://github.com/OpenCTR/OpenCTR/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "df34d2d91624737135662fc46ec76354466acfa62c34dd9fd4695fa9d5a08970"
  license "GPL-3.0-only"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "python3"
  depends_on "autoconf"
  depends_on "automake"
  depends_on "libtool"
  depends_on "pkg-config"
  depends_on "bison"
  depends_on "cloog"
  depends_on "doxygen"
  depends_on "gawk"
  depends_on "gettext"
  depends_on "gmp"
  depends_on "mpfr"
  depends_on "mpc"
  depends_on "isl"
  depends_on "sphinx"
  depends_on "wget"
  depends_on "ninja"
  

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test OpenCTR`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
