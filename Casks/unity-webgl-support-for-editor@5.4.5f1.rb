cask 'unity-webgl-support-for-editor@5.4.5f1' do
  version '5.4.5f1,68943b6c8c42'
  sha256 '64508e53fa098c595314d173f0b6bbed89b1801b18d5fded9529e8ba672e79f9'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.4.5f1'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

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
    @cask.preflight.call
  end

  uninstall_postflight do
    @cask.postflight.call
  end

  uninstall pkgutil: 'com.unity3d.WebGLSupport'

end
