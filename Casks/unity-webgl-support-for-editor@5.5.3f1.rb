cask 'unity-webgl-support-for-editor@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 '4fa0362f35d56d4316834cc1e0241188b8432b02494f4e991c5977817568e107'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
