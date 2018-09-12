class Crumbs < Formula
  desc "Command-line bookmarking system for sh like consoles"
  homepage "https://github.com/fasseg/crumbs"
  url "https://github.com/fasseg/crumbs/archive/0.0.2.tar.gz"
  sha256 "6e1d314ef3898bc92b64aa2bffb1b24b7011b07914a0e95617227f32a1450547"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"

    bash_completion.install "crumbs-completion.bash"
    fish_completion.install "crumbs-completion.fish"
  end

  test do
    system "#{bin}/crumbs", "--help"
  end
end
