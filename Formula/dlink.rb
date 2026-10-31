class Dlink < Formula
  desc "Secure, local-first device access with explicit user consent"
  homepage "https://devicelink.ai"
  url "https://registry.npmjs.org/@devicelink/dlink/-/dlink-0.4.3.tgz"
  sha256 "c0e0976473782cdea63b0171954d9615b8e24d36682db10f54b0494431c88d89"
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
