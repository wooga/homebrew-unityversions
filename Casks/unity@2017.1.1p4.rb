require 'fileutils'

cask 'unity@2017.1.1p4' do
  version '2017.1.1p4,4b0ddcd3f6ad'
  sha256 'b0f7022c76792f7c2a531bd5f47cf111502186ec247ac4d57cf58ab7607e07d0'

  url "http://beta.unity3d.com/download/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-#{@cask.version.before_comma}"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall_preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-#{@cask.version.before_comma}"
      FileUtils.move "/Applications/Unity-#{@cask.version.before_comma}", "/Applications/Unity" 
    end
  end

  uninstall_postflight do
    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
