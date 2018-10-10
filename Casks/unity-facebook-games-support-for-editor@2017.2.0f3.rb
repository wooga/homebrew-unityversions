cask 'unity-facebook-games-support-for-editor@2017.2.0f3' do
  version '2017.2.0f3,46dda1414e51'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/46dda1414e51/MacEditorTargetInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2017.2.0f3.pkg"
  name 'Facebook Gameroom Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Facebook-Games-Support-for-Editor-2017.2.0f3.pkg'

  depends_on cask: 'unity@2017.2.0f3'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.2.0f3"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.0f3'
end
