cask 'xtrafinder' do
  version '1.0'
  sha256 'fd1e756490e7302a043bc9a1bef78a79a9c9f483b85b78012eca2d11105c5d0e'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/releasenotes.html',
          checkpoint: '22f9971f7dbb9e823c83182cb51b69b59fff5873015ab8ff87c5d0879092bd21'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  # depends_on macos: '<= :yosemite'

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
