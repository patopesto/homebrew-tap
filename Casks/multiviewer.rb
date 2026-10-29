cask "multiviewer" do
  version "1.1.0"
  sha256 arm:          "933faa95c3668d7f1c10999d90b9f44a462323ac89b61913fa779cef8197a319",
         arm64_linux:  "cf2f105aab6758d4b8e5ad8d1d3584ee2d3dbfaf8c00828f4f0476c0d4c97030",
         x86_64_linux: "8e0dd3ae0187c10a31dfa78f81c57b07c4327fc6f7020e916647a6c06766c742"

  arch arm:   "arm64",
       intel: on_system_conditional(linux: "amd64")
  os  macos: "darwin",
      linux: "linux"
  url_end = on_system_conditional macos: "dmg",
                                  linux: "AppImage"
      
  on_macos do
    depends_on arch: :arm64

    app "Multiviewer.app"
  end

  on_linux do
    app_image "Multiviewer_v#{version}_linux_#{arch}.AppImage", target: "Multiviewer.AppImage"
  end

  url "https://gitlab.com/api/v4/projects/patopest%2Fmultiviewer/packages/generic/multiviewer/v#{version}/Multiviewer_v#{version}_#{os}_#{arch}.#{url_end}"

  name "Multiviewer"
  desc "A multi-protocol video monitoring tool"
  homepage "https://gitlab.com/patopest/multiviewer"

  livecheck do
    url "https://gitlab.com/patopest/multiviewer.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
