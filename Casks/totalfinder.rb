cask 'totalfinder' do
  if MacOS.version <= :yosemite
    version '1.9.3'
    sha256 'cde59340d0bfcbca36208a1b0ea0d811cf54355b42220214586477514039b2e2'
  else
    version '1.10.10'
    sha256 'ac897b3e3ff614c6c41e10195a14ce4954e599186ad638f9d712a8f64d353d15'
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
