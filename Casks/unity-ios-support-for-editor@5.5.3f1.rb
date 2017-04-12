cask 'unity-ios-support-for-editor@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 '929ea71e122a330d0677db2710e3d18a4f40e7fbe7131dc0f6bd5e12cf669c42'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
