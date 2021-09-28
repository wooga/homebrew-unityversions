cask 'unity-download-assistant@2019.4.30f1' do
  version '2019.4.30f1,e8c891080a1f'
  sha256 '5733e409cb2d93294803dae40bfe829a210bafccaa0d2d9e25798e6a62bf48ac'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
