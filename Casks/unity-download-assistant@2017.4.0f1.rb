cask 'unity-download-assistant@2017.4.0f1' do
  version '2017.4.0f1,b5bd171ee9ba'
  sha256 'f8192914ec90941590eb391114da52a4a026fe8ea6a516491cbbd04a49be3068'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
