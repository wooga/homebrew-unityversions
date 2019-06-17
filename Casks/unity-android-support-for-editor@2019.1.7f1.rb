cask 'unity-android-support-for-editor@2019.1.7f1' do
  version '2019.1.7f1,f3c4928e5742'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/f3c4928e5742/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-2019.1.7f1.pkg"
  name 'Android Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Android-Support-for-Editor-2019.1.7f1.pkg'

  depends_on cask: 'unity@2019.1.7f1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2019.1.7f1"
      FileUtils.move "/Applications/Unity-2019.1.7f1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2019.1.7f1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2019.1.7f1/PlaybackEngines/AndroidPlayer'
end
