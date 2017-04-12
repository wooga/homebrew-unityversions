cask 'unity-android-support-for-editor@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 '990a66b73255ee4a4cd50ec44571a4be0858100486daa9e4c0249a503b566ee6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
