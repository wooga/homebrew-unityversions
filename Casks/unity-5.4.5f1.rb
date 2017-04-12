cask 'unity-5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 'c1f527fb7247cbd017008985ab31bab87cbdcb1be35d1e4744fed0e7cf063df3'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
