cask 'unity-download-assistant@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 '0b1731fdb8c2dd01266ecfdf6ca8782d31f41acf39fec8dc832f7aee59614f28'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
