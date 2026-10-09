cask "multiviewer" do
  version "1.0.0"
  sha256 arm:          "33f4add23fac99f127363a2880f8c269e410da9dc8cd0623641bf122c656f10d",
         arm64_linux:  "c579773576a734e16617c8732a31b801f464d888945b6662283414a1e7043c24",
         x86_64_linux: "ce02b3b9c9ef239a9121213a8d4524676a66e0407394bff167235d6898cda1ab"

  arch arm:   "arm64",
       intel: on_system_conditional(linux: "amd64")
  os  macos: "darwin",
      linux: "linux"
  url_end = on_system_conditional macos: "dmg",
                                  linux: "AppImage"
      
  on_macos do
    app "Multiviewer.app"
  end

  on_linux do
    app_image "Multiviewer_v#{version}_linux_#{arch}.AppImage", target: "Multiviewer.AppImage"
  end

  url "https://gitlab.com/api/v4/projects/patopest%2Fmultiviewer/packages/generic/multiviewer/v#{version}/Multiviewer_v#{version}_#{os}_#{arch}.#{url_end}"

  name "Multiviewer"
  desc "A multi-protocol video monitoring tool"
  homepage "https://gitlab.com/patopest/multiviewer"
end
