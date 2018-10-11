cask 'unity-samsung-tv-support-for-editor@5.5.2f1' do
  version '5.5.2f1,3829d7f588f3'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/3829d7f588f3/MacEditorTargetInstaller/UnitySetup-Samsung-TV-Support-for-Editor-5.5.2f1.pkg"
  name 'SamsungTV Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Samsung-TV-Support-for-Editor-5.5.2f1.pkg'

  depends_on cask: 'unity@5.5.2f1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.5.2f1"
      FileUtils.move "/Applications/Unity-5.5.2f1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.5.2f1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.5.2f1/PlaybackEngines/STVPlayer'
end
