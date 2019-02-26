cask 'unity-download-assistant@2017.4.16f1' do
  version '2017.4.16f1,7f7bdd1ef0'
  sha256 '1e3b732162edb42ae45db702e9833d67a58ae5132f2541e78028a1425c3c83df'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
