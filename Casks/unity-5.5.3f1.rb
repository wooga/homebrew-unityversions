cask 'unity-5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 '3d9174919b3fd0adc0a749f8627a18715671720d54d2eb055bcbd33cd2f8b12b'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
