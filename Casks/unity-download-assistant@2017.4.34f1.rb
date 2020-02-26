cask 'unity-download-assistant@2017.4.34f1' do
  version '2017.4.34f1,121f18246307'
  sha256 '7a92a72e50ba94722acca86e96ed356967d73017302a7a063b5939b9191569d0'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
