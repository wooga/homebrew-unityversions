cask 'unity-linux-support-for-editor@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 'b9480ef5e0f8d05b7ff22a2c0efa108e1bde20df9036f8bce63f5b8b3ff69494'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5.3f1'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
