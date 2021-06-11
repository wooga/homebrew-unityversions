cask 'unity-download-assistant@2019.4.28f1' do
  version '2019.4.28f1,1381962e9d08'
  sha256 'e2e07a172e9c5ec9c55ef21a8d2e5a7158a2c543b9ced1e4dc35daa0ac8e9ffa'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
