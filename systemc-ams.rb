class SystemcAms < Formula
  desc "SystemC Analoged/Mixed Signal Proof of Concept"
  homepage "https://www.coseda-tech.com/systemc-ams-proof-of-concept"
  url "https://www.coseda-tech.com/files/Files/Proof-of-Concepts/systemc-ams-2.3.tar.gz", using: :nounzip
  sha256 "50e2a882ee17b8c7136dcb3936b1cd7ee7af96c8c982def1f4a4051c52bb6e9e"
  license ""

  bottle do
    root_url "https://metacollin.com/bottles"
    sha256 cellar: :any, monterey: "c99e964658b29f4b2511b4cd8243ea56e0527ecb21deb52b1171df6d327f28cc"
  end

  depends_on "systemc"
  depends_on "gnu-tar" => :build

  def install
    system "gtar -xzf systemc-ams-2.3.tar.gz"

    system "./systemc-ams-2.3/configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--with-arch-suffix=",
                          "--prefix=#{prefix}"
    system "make", "-j#{ENV.make_jobs}", "install"
  end

  test do
    system "true"
  end
end
