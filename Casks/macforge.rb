cask 'macforge' do
  version '0.10.3'
  sha256 '9a99be9f0ff483f46a6d76aaa6a143ce5086b54e688cf2f981f345ed8cddfee4'

  # raw.githubusercontent.com/w0lfschild/app_updates/master/MacForge was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/MacForge/MacForge_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/MacForge/appcast.xml'
  name 'MacForge'
  homepage 'https://www.macenhance.com/macforge'

  app 'MacForge.app'

  zap delete: [
                '~/Library/Application Support/MacForge',
                '~/Library/Preferences/com.w0lf.MacForge.plist',
                '~/Library/Cookies/com.w0lf.MacForge.binarycookies',
                '~/Library/Caches/com.w0lf.MacForge',
                '/Library/Application Support/MacEnhance',
                '/Library/PrivilegedHelperTools/com.w0lf.MacForge.Injector',
                '/Library/LaunchDaemons/com.w0lf.MacForge.Injector.plist',
                '/Library/PrivilegedHelperTools/com.w0lf.MacForge.Installer',
                '/Library/LaunchDaemons/com.w0lf.MacForge.Installer.plist',
              ]

  caveats 'System Integrity Protection must be disabled to install MacForge.'
end
