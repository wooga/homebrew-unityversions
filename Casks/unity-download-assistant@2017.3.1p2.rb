cask 'unity-download-assistant@2017.3.1p2' do
  version '2017.3.1p2,fd9fec26f216'
  sha256 'f847d93fcce40baf51e3ea1c7804e7948930653d382607117efbf29d820ad05c'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
