cask 'mysimbl' do
  version '0.7.2'
  sha256 'ad96532805bf0068b0decec3c8f1607c24051c9a17ea0bf1d8036332b9ab00d7'

  # raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/mySIMBL_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: '2edb1a273816bb270280d88d4a8dd7c40d6dbe03ac20d132ef479025da17871e'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  zap trash: [
               '~/Library/Application Support/mySIMBL',
               '~/Library/Caches/org.w0lf.mySIMBL',
               '~/Library/Caches/org.w0lf.mySIMBLAgent',
               '~/Library/Preferences/org.w0lf.SIMBLAgent.plist',
               '~/Library/Preferences/org.w0lf.mySIMBL.plist',
               '~/Library/Preferences/org.w0lf.mySIMBLAgent.plist',
             ]

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end
