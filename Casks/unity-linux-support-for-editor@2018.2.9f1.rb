cask 'unity-linux-support-for-editor@2018.2.9f1' do
  version '2018.2.9f1,2207421190e9'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/2207421190e9/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.9f1.pkg"
  name 'Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Linux-Support-for-Editor-2018.2.9f1.pkg'

  depends_on cask: 'unity@2018.2.9f1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2018.2.9f1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.2.9f1'
end
