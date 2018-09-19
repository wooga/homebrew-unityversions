cask 'unity-download-assistant@2017.4.11f1' do
  version '2017.4.11f1,8c6b8ef6d111'
  sha256 '80a2536e1d6284680d0ff54c5a164a08fb7c08b021fd1e9af6b6720a384735bc'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
