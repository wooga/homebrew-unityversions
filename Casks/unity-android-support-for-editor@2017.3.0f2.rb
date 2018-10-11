cask 'unity-android-support-for-editor@2017.3.0f2' do
  version '2017.3.0f2,d3a5469e8c44'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/d3a5469e8c44/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-2017.3.0f2.pkg"
  name 'Android Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Android-Support-for-Editor-2017.3.0f2.pkg'

  depends_on cask: 'unity@2017.3.0f2'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.3.0f2"
      FileUtils.move "/Applications/Unity-2017.3.0f2", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.3.0f2"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.0f2/PlaybackEngines/AndroidPlayer'
end
