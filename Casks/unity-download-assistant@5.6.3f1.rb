cask 'unity-download-assistant@5.6.3f1' do
  version '5.6.3f1,d3101c3b8468'
  sha256 '6906c5d1347688db216b72902bc52c1e51da55ad4759fdc49e094b862ab88a51'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
