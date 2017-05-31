cask 'unity-download-assistant@5.6.0p2' do
  version '5.6.0p2,bbd5ca01a0ea'
  sha256 '67c7e9007ebc2670484058f15f0634e9c648371935d1b7831947eb92942bd021'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
