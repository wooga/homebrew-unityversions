cask 'unity-ios-support-for-editor@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 '4cf1483ac0080e2a57a07c790a8d5741b0ed126495be1bacea39f7a2f63456ae'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
