cask 'unity-download-assistant@2018.4.17f1' do
  version '2018.4.17f1,b830f56f42f0'
  sha256 'fba09d2976bdfdd52a93c337ddb5ffaa56f5274ceafd30cebf6f6858a1dfc59d'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
