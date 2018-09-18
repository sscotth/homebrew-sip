cask 'xtrafinder' do
  version '0.28'
  sha256 '45df19f04103ffef75349f462ba590b6ffe9bb49126a37dea7804091e27af246'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/releasenotes.html',
          checkpoint: 'b0c3fbbbba5c67d700a35e35df3f187a9642400ebcde8c2e8ae3cee5d2a6ed1e'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  # depends_on macos: '<= :yosemite'

  pkg 'XtraFinderInstaller.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
