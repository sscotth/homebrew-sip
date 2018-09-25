cask 'totalfinder' do
  if MacOS.version <= :yosemite
    version '1.9.3'
    sha256 'cde59340d0bfcbca36208a1b0ea0d811cf54355b42220214586477514039b2e2'
  else
    version '1.11.2'
    sha256 '64bf2f1eab41840f64c3ba11a754155bf72b54117080ba87f1b0f6688bac438a'
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
