cask 'unity-download-assistant@5.6.1p1' do
  version '5.6.1p1,74c1f4917542'
  sha256 '914b4f5dae981f7eff45f8fd82f07c98e322d75b0ae47a85fe3cc4852de5cb21'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
