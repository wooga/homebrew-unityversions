cask 'unity-download-assistant@2017.4.21f1' do
  version '2017.4.21f1,de35fe252486'
  sha256 '6d9f3a49092b910c511b700e90946d2ac3daf2d1980a9747ae794e25c0002a64'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
