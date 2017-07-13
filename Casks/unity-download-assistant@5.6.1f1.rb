cask 'unity-download-assistant@5.6.1f1' do
  version '5.6.1f1,2860b30f0b54'
  sha256 'e79dbcba670c2e6dd4d39443ed122fda86ef07957efe0d803048397e6113e3ad'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
