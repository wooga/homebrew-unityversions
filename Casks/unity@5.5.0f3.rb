cask 'unity@5.5.0f3' do
  version '5.5.0f3,38b4efef76f0'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/38b4efef76f0/MacEditorInstaller/Unity.pkg"
  name 'Unity 5.5.0f3'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-5.5.0f3"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.5.0f3'
end
