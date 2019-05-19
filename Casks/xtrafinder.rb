cask 'xtrafinder' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  # depends_on macos: '<= :yosemite'

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
