cask 'unity-download-assistant@5.6.2f1' do
  version '5.6.2f1,a2913c821e27'
  sha256 '23e20d15cfc15ecee995d1a9972e6fb8b63a3a4c3b6b50915afeec59d7da7298'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
