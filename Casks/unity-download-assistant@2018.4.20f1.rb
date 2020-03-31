cask 'unity-download-assistant@2018.4.20f1' do
  version '2018.4.20f1,008688490035'
  sha256 'e59feaf8733c76e08eb2e75d3f22c65c460ea0c4f2c0160e28d4dadabc0bc87f'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
