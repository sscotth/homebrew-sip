cask 'darkboot' do
  version '6.0.3'
  sha256 '1f37d0abefa66bb5092e4f0f6fc606c1b7d5cbc052f5d27a2d0643b19a613c8e'

  # githubusercontent.com/w0lfschild/app_updates/master/DarkBoot was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/DarkBoot/DarkBoot_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/DarkBoot/appcast.xml'
  name 'Dark Boot'
  homepage 'https://github.com/w0lfschild/DarkBoot/'

  auto_updates true

  # depends_on macos: '>= :yosemite'

  app 'Dark Boot.app'
end
