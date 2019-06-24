cask 'unity-vuforia-ar-support-for-editor@2019.1.8f1' do
  version '2019.1.8f1,7938dd008a75'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/7938dd008a75/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.8f1.pkg"
  name 'Vuforia Augmented Reality Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.8f1.pkg'

  depends_on cask: 'unity@2019.1.8f1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2019.1.8f1"
      FileUtils.move "/Applications/Unity-2019.1.8f1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2019.1.8f1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2019.1.8f1/PlaybackEngines/VuforiaSupport'
end
