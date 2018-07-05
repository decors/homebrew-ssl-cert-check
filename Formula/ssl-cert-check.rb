class SslCertCheck < Formula
  desc ""
  homepage "https://github.com/Matty9191/ssl-cert-check"
  head "https://github.com/Matty9191/ssl-cert-check.git"

  depends_on "bash"

  def install
    resources.each do |r|
      r.stage libexec/".#{r.name}"
    end

    libexec.install %w[ssl-cert-check]

    bin.install_symlink libexec/"ssl-cert-check" => bin/"ssl-cert-check"
  end

  test do
    system bin/"ssl-cert-check", "/usr/local/etc/openssl/"
  end
end
