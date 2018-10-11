cask 'unity-facebook-games-support-for-editor@2018.1.1f1' do
  version '2018.1.1f1,b8cbb5de9840'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/b8cbb5de9840/MacEditorTargetInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.1f1.pkg"
  name 'Facebook Gameroom Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Facebook-Games-Support-for-Editor-2018.1.1f1.pkg'

  depends_on cask: 'unity@2018.1.1f1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2018.1.1f1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2018.1.1f1'
end
