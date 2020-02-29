cask 'unity-windows-mono-support-for-editor@2018.4.18f1' do
  version '2018.4.18f1,61fce66342ad'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/61fce66342ad/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-2018.4.18f1.pkg"
  name 'Windows Build Support (Mono)'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Windows-Mono-Support-for-Editor-2018.4.18f1.pkg'

  depends_on cask: 'unity@2018.4.18f1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2018.4.18f1"
      FileUtils.move "/Applications/Unity-2018.4.18f1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2018.4.18f1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.4.18f1/PlaybackEngines/WindowsStandaloneSupport'
end
