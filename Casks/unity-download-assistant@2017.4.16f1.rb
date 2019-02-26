cask 'unity-download-assistant@2017.4.16f1' do
  version '2017.4.16f1,7f7bdd1ef02b'
  sha256 'a46c729e2ab10f7730f9f8c3a9e4a0317c68f11535431f370610b4d95a80f6a5'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
