cask 'unity-standard-assets@5.5.3f1' do
  version '5.5.3f1,4d2f809fd6f3'
  sha256 'f147d2fe3842ae4cc1cd1243186c6d3566139c3985ac2ef8b8dbf288dc7820b2'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
