cask 'unity-download-assistant@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 'a1f48d94839096bd2e1f2c12d5d7eaa4173852d35ce8e1e29e1d5b30decedbba'

  url "http://netstorage.unity3d.com/unity/4d2f809fd6f3/UnityDownloadAssistant-5.5.3f1.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
