cask 'unity-download-assistant@2018.4.5f1' do
  version '2018.4.5f1,7b38f8ac282e'
  sha256 'e2d0059739c467df7b729ff628e18eba0230233524e46b21080a13ac838c302c'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
