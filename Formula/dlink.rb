class Dlink < Formula
  desc "Secure, local-first device access with explicit user consent"
  homepage "https://devicelink.ai"
  url "https://registry.npmjs.org/@devicelink/dlink/-/dlink-0.4.2.tgz"
  sha256 "3b408545b18b6760853a83629e0cd68631ad025a56800d40b493bbad09d0ae07"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dlink --version")
  end
end
