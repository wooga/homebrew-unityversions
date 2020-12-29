cask 'unity-download-assistant@2018.4.30f1' do
  version '2018.4.30f1,c698a062d8e6'
  sha256 '720419eacd0c2e0307f3f87bfb640715e7aff20466a7b311eef666bb23a9c2d3'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
