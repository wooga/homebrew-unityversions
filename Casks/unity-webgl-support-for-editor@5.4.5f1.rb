cask 'unity-webgl-support-for-editor@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 '64508e53fa098c595314d173f0b6bbed89b1801b18d5fded9529e8ba672e79f9'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
