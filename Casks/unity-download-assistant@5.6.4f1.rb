cask 'unity-download-assistant@5.6.4f1' do
  version '5.6.4f1,ac7086b8d112'
  sha256 '40bc72b0d21b6a80d56a41adfb23d683754c4ad1e9319fd8a877c3dd3b88d2dc'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
