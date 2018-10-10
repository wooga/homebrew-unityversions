cask 'unity-linux-support-for-editor@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/68943b6c8c42/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-5.4.5f1.pkg"
  name 'Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Linux-Support-for-Editor-5.4.5f1.pkg'

  depends_on cask: 'unity@5.4.5f1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-5.4.5f1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.4.5f1'
end
