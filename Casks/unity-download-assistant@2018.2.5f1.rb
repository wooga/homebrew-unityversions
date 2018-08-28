cask 'unity-download-assistant@2018.2.5f1' do
  version '2018.2.5f1,3071d1717b71'
  sha256 '62c0bce573b932bbf7c20a92024c84d2de4740729e341abe23840efe0136c24d'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
