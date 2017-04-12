cask 'unity-standard-assets@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 '2ae8630db74fca415286c4cb3486bd072b5b8bd393c7dbc31aacaa1cd6c905e6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
