cask 'unity-download-assistant@5.5.5f1' do
  version '5.5.5f1,d875e6967482'
  sha256 '2126581bbb82bc1dc6e20ec60416bb093f1864c470c53a7d0f4007c0a03924ee'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
