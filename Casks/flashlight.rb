cask 'flashlight' do
  version '1.1.0'
  sha256 'ffda6bf2e1e515ab0c1ec4b70730a9a86c47802d57d88f853fda55c2bbd9f3f1'

  # githubusercontent.com/w0lfschild/app_updates/master/Flashlight was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/Flashlight_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/appcast.xml'
  name 'Flashlight'
  homepage 'https://github.com/w0lfschild/Flashlight/'

  auto_updates true
  # depends_on macos: '>= :yosemite'
  depends_on cask: 'mysimbl'

  app 'Flashlight.app'
end
