cask 'totalspaces' do
  version '2.7.4'
  sha256 'a7da90f3ec22370834358200ad783667cc85680c3b85e8d25d0ecc0ff9a1f789'

  url "http://downloads.binaryage.com/TotalSpaces#{version.major}-#{version}.dmg"
  appcast "http://updates-s3.binaryage.com/totalspaces#{version.major}.xml",
          checkpoint: '188c44f1165a021d5f17e39ec6b7d6948e81d8bdd1c10feaefeb3686c55638a5'
  name 'TotalSpaces'
  homepage 'https://totalspaces.binaryage.com/'

  installer manual: "TotalSpaces#{version.major}.app"

  uninstall pkgutil: "com.binaryage.TotalSpaces#{version.major}",
            script:  {
                       executable: "TotalSpaces#{version.major} Uninstaller.app/Contents/MacOS/TotalSpaces#{version.major} Uninstaller",
                       args:       ['--headless'],
                       sudo:       true,
                     },
            signal:  [
                       ['INT', 'com.binaryage.totalspacescrashwatcher'],
                       ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                     ],
            quit:    "com.binaryage.TotalSpaces#{version.major}"
end
