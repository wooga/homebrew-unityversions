cask 'unity-vuforia-ar-support-for-editor@2018.2.6f1' do
  version '2018.2.6f1,c591d9a97a0b'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/c591d9a97a0b/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.6f1.pkg"
  name 'Vuforia Augmented Reality Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.6f1.pkg'

  depends_on cask: 'unity@2018.2.6f1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2018.2.6f1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.2.6f1'
end
