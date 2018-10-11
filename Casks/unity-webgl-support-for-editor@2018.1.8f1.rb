cask 'unity-webgl-support-for-editor@2018.1.8f1' do
  version '2018.1.8f1,26051d4de9e9'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/26051d4de9e9/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-2018.1.8f1.pkg"
  name 'WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-WebGL-Support-for-Editor-2018.1.8f1.pkg'

  depends_on cask: 'unity@2018.1.8f1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2018.1.8f1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.1.8f1'
end
