cask 'unity-download-assistant@2017.1.0b7' do
  version '2017.1.0b7,8a1ad67dc191'
  sha256 '4dd770ffc13ccca9de86d18c6c212b375c2b1bedef1d54d8e4eee538f1e8fb93'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
