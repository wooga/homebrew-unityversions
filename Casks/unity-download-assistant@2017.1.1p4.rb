cask 'unity-download-assistant@2017.1.1p4' do
  version '2017.1.1p4,4b0ddcd3f6ad'
  sha256 '1472cd52dcaf1727a7e144b797c96e0fe3f05a4dc7fab7a35bef1a8be2a548cb'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
