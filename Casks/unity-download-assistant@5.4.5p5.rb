cask 'unity-download-assistant@5.4.5p5' do
  version '5.4.5p5,8c4c93a90556'
  sha256 'e6590cc26d81097455c098e3492dbe3cc4c2e3dbb508fc52c637e808222490ef'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
