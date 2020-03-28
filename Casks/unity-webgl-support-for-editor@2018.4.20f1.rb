cask 'unity-webgl-support-for-editor@2018.4.20f1' do
  version '2018.4.20f1,008688490035'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/008688490035/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-2018.4.20f1.pkg"
  name 'WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-WebGL-Support-for-Editor-2018.4.20f1.pkg'

  depends_on cask: 'unity@2018.4.20f1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2018.4.20f1"
      FileUtils.move "/Applications/Unity-2018.4.20f1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2018.4.20f1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.4.20f1/PlaybackEngines/WebGLSupport'
end
