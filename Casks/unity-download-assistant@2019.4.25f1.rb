cask 'unity-download-assistant@2019.4.25f1' do
  version '2019.4.25f1,01a0494af254'
  sha256 '204ac6773c81bb377a2ad7dbc24dfc015819185759040236b9a5495b2e58c100'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
