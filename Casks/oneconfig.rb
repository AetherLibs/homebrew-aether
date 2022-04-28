cask "oneconfig" do
  version "0.1.0"
  sha256 :no_check
  
  url "polyfrost.cc/static/oneconfig/Launcher.zip"
  name "OneConfig"
  desc "The launcher for OneConfig"
  homepage "https://polyfrost.cc"

  app "OneConfig Launcher.app",
end
