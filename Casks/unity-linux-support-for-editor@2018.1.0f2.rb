cask 'unity-linux-support-for-editor@2018.1.0f2' do
  version '2018.1.0f2,d4d99f31acba'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/d4d99f31acba/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-2018.1.0f2.pkg"
  name 'Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Linux-Support-for-Editor-2018.1.0f2.pkg'

  depends_on cask: 'unity@2018.1.0f2'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2018.1.0f2"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.1.0f2'
end
