cask 'unity-download-assistant@2017.3.1p4' do
  version '2017.3.1p4,7f25373c3e03'
  sha256 'be4b0291e5c06ff76ab268ce572d76a6499e272f33c3d8416111c6be964a4d74'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
