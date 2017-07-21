cask 'unity-download-assistant@5.5.2p1' do
  version '5.5.2p1,9360c5517afe'
  sha256 'b8587c4e1ca9c0ea8e383e4158c066cdb49b907687a62589f3b9843a17560667'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
