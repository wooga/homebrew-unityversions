cask 'unity-windows-support-for-editor@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 '8830c22aa4f4957563ebfab234dca0286c069d843f4bf01412f213ca5ab1fdbf'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-#{@cask.version.before_comma}"
      FileUtils.move "/Applications/Unity-#{@cask.version.before_comma}", "/Applications/Unity" 
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
    @cask.preflight.call
  end

  uninstall_postflight do
    @cask.postflight.call
  end

  depends_on cask: 'unity@5.4.5f1'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
