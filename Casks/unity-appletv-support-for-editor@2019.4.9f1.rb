cask 'unity-appletv-support-for-editor@2019.4.9f1' do
  version '2019.4.9f1,50fe8a171dd9'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/50fe8a171dd9/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.4.9f1.pkg"
  name 'tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-AppleTV-Support-for-Editor-2019.4.9f1.pkg'

  depends_on cask: 'unity@2019.4.9f1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2019.4.9f1"
      FileUtils.move "/Applications/Unity-2019.4.9f1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2019.4.9f1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2019.4.9f1/PlaybackEngines/AppleTVSupport'
end
