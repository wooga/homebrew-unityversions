cask 'unity@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/68943b6c8c42/MacEditorInstaller/Unity.pkg"
  name 'Unity 5.4.5f1'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  

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
