cask 'cdock' do
  version '1.2.0'
  sha256 '1efc2a030ca597acad6b25786f12c1fe9917e589afab4bacae4eef61cefce00c'

  # raw.githubusercontent.com/w0lfschild/app_updates/master/cDock was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/cDock/cDock_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/cDock/appcast.xml'
  name 'cDock 3'
  homepage 'https://cdock.macenhance.com/'

  depends_on cask: 'easysimbl'

  # depends_on macos: '>= :mavericks'

  app 'cDock.app'

  caveats <<~EOS
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
