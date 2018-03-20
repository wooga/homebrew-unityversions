cask 'unity-download-assistant@2017.3.1p3' do
  version '2017.3.1p3,a66397957d3b'
  sha256 '1bb8fd22a921df8f2d93b9f55e6b6edd6d7e852adebf60c8e1fd3678f2b2c10b'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
