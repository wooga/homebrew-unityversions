cask 'unity-download-assistant@5.6.3p1' do
  version '5.6.3p1,9c92e827232b'
  sha256 '1e0474f843b3ad6e01c6e0033c1faa0bbe1d26c200a8d8754e826ce34dc33965'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
