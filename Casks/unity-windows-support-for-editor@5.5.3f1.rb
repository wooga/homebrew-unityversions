cask 'unity-windows-support-for-editor@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 '5ab13abb285fb2900b121e345ea65149e171b2b715f1fd4b3f0f55e5766977d1'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5.3f1'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
