cask 'unity-download-assistant@2018.4.5f1' do
  version '2018.4.5f1,7b38f8ac282e'
  sha256 '485d2a4479469ae897e30492b2718d08a5657078dfdc6414868cb47c4ef6d172'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
