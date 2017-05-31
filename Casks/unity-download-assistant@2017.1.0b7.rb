cask 'unity-download-assistant@2017.1.0b7' do
  version '2017.1.0b7,8a1ad67dc191'
  sha256 '1e3b732162edb42ae45db702e9833d67a58ae5132f2541e78028a1425c3c83df'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
