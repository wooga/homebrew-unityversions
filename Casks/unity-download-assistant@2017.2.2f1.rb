cask 'unity-download-assistant@2017.2.2f1' do
  version '2017.2.2f1,1f4e0f9b6a50'
  sha256 'f285e1ab2dc17e65ce960e7db9b507ff57fee972435b269abde2a4aeacc22fc9'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
