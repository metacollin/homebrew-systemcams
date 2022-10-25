class SystemcAms < Formula
  desc "SystemC Analoged/Mixed Signal Proof of Concept"
  homepage "https://www.coseda-tech.com/systemc-ams-proof-of-concept"
  url "https://www.coseda-tech.com/files/Files/Proof-of-Concepts/systemc-ams-2.3.tar.gz"
  sha256 "50e2a882ee17b8c7136dcb3936b1cd7ee7af96c8c982def1f4a4051c52bb6e9e"
  license ""
  
  depends_on "systemc"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--with-arch-suffix=",
                          "--prefix=#{prefix}"
    system "make", "-j#{ENV.make_jobs}", "install"
  end

  test do
    system "true"
  end
end
