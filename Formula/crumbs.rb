class Crumbs < Formula
  desc "Command-line bookmarking system for sh like consoles"
  homepage "https://github.com/fasseg/crumbs"
  url "https://github.com/fasseg/crumbs/archive/0.0.3.tar.gz"
  sha256 "206950868d86fab511e48b864cfca39d53f879d84da36531fb70803b46d3b924"

  depends_on "findutils"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"

    bash_completion.install "crumbs-completion.bash" => "crumbs.bash"
    fish_completion.install "crumbs-completion.fish" => "crumbs.fish"
  end

  test do
    system "#{bin}/crumbs", "--help"
  end
end
