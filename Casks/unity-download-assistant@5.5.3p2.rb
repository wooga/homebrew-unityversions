cask 'unity-download-assistant@5.5.3p2' do
  version '5.5.3p2,f15b2772e4d0'
  sha256 '025dc14773e6dcbcb5910f284210e62f668a56de2615b78499276917241fddd0'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
