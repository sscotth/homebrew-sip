cask 'flashlight' do
  version '1.0.8'
  sha256 'b324c20ed13afae8e060c2e4ed09a2ffd7617b022ed4da271b4e2a793ad6fa52'

  # githubusercontent.com/w0lfschild/app_updates/master/Flashlight was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/Flashlight_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/appcast.xml',
          checkpoint: 'fdd3c2092553f63601c8bcb6e934cc003573a3d264b31242b4457a41a7cd2edb'
  name 'Flashlight'
  homepage 'https://github.com/w0lfschild/Flashlight/'

  auto_updates true
  # depends_on macos: '>= :yosemite'
  depends_on cask: 'mysimbl'

  app 'Flashlight.app'
end
