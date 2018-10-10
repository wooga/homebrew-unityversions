cask 'unity-tizen-support-for-editor@2017.1.0f3' do
  version '2017.1.0f3,472613c02cf7'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/472613c02cf7/MacEditorTargetInstaller/UnitySetup-Tizen-Support-for-Editor-2017.1.0f3.pkg"
  name 'Tizen Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Tizen-Support-for-Editor-2017.1.0f3.pkg'

  depends_on cask: 'unity@2017.1.0f3'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.1.0f3"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.1.0f3'
end
