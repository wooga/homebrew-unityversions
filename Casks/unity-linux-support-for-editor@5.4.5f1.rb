cask 'unity-linux-support-for-editor@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 'f4f225a562bebb536dbd73f6d0dfa589942c1bfef6277b48e87fc751784ba3b6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.4.5f1'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
