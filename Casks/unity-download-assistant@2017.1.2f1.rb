cask 'unity-download-assistant@2017.1.2f1' do
  version '2017.1.2f1,cc85bf6a8a04'
  sha256 'ed4e08f362f586a44ccba955b8626f5c80c7800cd98b46480a853039b1a30fce'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
