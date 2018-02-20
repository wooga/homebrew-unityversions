cask 'unity-download-assistant@2017.3.1p1' do
  version '2017.3.1p1,6c5ba423732e'
  sha256 '4a90760ce509d9270320d09ea76793b469243811341c40d5eb451c24ae333c68'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
