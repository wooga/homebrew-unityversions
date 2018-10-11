cask 'unity-ios-support-for-editor@2017.3.0f3' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/a9f86dcd79df/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-2017.3.0f3.pkg"
  name 'iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-iOS-Support-for-Editor-2017.3.0f3.pkg'

  depends_on cask: 'unity@2017.3.0f3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.3.0f3"
      FileUtils.move "/Applications/Unity-2017.3.0f3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.3.0f3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.0f3/PlaybackEngines/iOSSupport'
end
