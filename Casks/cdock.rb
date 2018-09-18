cask 'cdock' do
  version '1.1.3'
  sha256 'b324c20ed13afae8e060c2e4ed09a2ffd7617b022ed4da271b4e2a793ad6fa52'

  # raw.githubusercontent.com/w0lfschild/app_updates/master/cDock was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/cDock/cDock_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/cDock/appcast.xml',
          checkpoint: 'ad5283b85f03d59fa232dd7198ea553c12d88bad917c1c60cf5e170c64fe528f'
  name 'cDock 3'
  homepage 'https://www.macenhance.com/cdock.html'

  depends_on cask: 'easysimbl'
  # depends_on macos: '>= :mavericks'

  app 'cDock.app'

  caveats <<~EOS
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
