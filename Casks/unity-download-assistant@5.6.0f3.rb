cask 'unity-download-assistant@5.6.0f3' do
  version '5.6.0f3,497a0f351392'
  sha256 '5dcd1f56ce7d32c84238354a1cd40f797f224e4012d3ea8ab9ee6e3bac4c1f1c'

  url "http://netstorage.unity3d.com/unity/497a0f351392/UnityDownloadAssistant-5.6.0f3.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
