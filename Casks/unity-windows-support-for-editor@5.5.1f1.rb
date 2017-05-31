cask 'unity-windows-support-for-editor@5.5.1f1' do
  version '5.5.1f1,88d00a7498cd'
  sha256 '8cace2e7cc3c231d08946615cb75bff081a5ef6641049d9c082bcb2d64ad7ea6'

  url "http://netstorage.unity3d.com/unity/88d00a7498cd/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-5.5.1f1.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5.1f1'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  preflight do
    if File.exist? '/Applications/Unity'
        FileUtils.move '/Applications/Unity', '/Applications/Unity.temp'
    end

    if File.exist? "/Applications/Unity-#{@cask.version.before_comma}"
      FileUtils.move "/Applications/Unity-#{@cask.version.before_comma}", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-#{@cask.version.before_comma}"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall_preflight do
    if File.exist? '/Applications/Unity'
        FileUtils.move '/Applications/Unity', '/Applications/Unity.temp'
    end

    if File.exist? "/Applications/Unity-#{@cask.version.before_comma}"
      FileUtils.move "/Applications/Unity-#{@cask.version.before_comma}", '/Applications/Unity'
    end
  end

  uninstall_postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-#{@cask.version.before_comma}"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
