cask 'totalfinder' do
  if MacOS.version <= :yosemite
    version '1.9.3'
    sha256 'cde59340d0bfcbca36208a1b0ea0d811cf54355b42220214586477514039b2e2'
  else
    version '1.11.8'
    sha256 'b1f2f80d2bca59d639cb9dabf4973942674b71564bd3c5b8a1029ad2df30b009'
  end

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name 'TotalFinder'
  homepage 'https://totalfinder.binaryage.com/'

  # depends_on macos: '>= :mavericks'

  pkg 'TotalFinder.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalfinder.app',
            script:  {
                       executable: 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                       args:       ['--headless'],
                       sudo:       true,
                     }
end
