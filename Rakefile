
require 'fileutils'
require 'erb'
require 'tmpdir'

ANDROID_SUPPORT = "unity-android-support-for-editor"
DOWNLOAD_ASSISTANT = "unity-download-assistant"
IOS_SUPPORT = "unity-ios-support-for-editor"
LINUX_SUPPORT = "unity-linux-support-for-editor"
STANDART_ASSETS = "unity-standard-assets"
WEBGL_SUPPORT = "unity-webgl-support-for-editor"
WINDOWS_SUPPORT = "unity-windows-support-for-editor"
UNITY = "unity"

BETA_BASE_URL = "http://beta.unity3d.com/download"
BASE_URL = "http://download.unity3d.com/download_unity"

def unity_base_url beta
  if beta
    return BETA_BASE_URL
  end
  BASE_URL
end

def beta? version
  !version.include? 'f'
end

def versions_map
  {
    "2018.4.20f1" => "008688490035",
    "2018.4.17f1" => "b830f56f42f0",
    "2018.4.5f1" => "7b38f8ac282e",
    "2018.2.0f2" => "787658998520",
    "2017.4.34f1" => "121f18246307",
    "2017.4.21f1" => "de35fe252486",
    "2017.4.16f1" => "7f7bdd1ef02b",
    "2017.4.11f1" => "8c6b8ef6d111",
    "2017.4.0f1" => "b5bd171ee9ba",
    "2017.3.1p4" => "7f25373c3e03",
    "2017.3.1p3" => "a66397957d3b",
    "2017.3.1p2" => "fd9fec26f216",
    "2017.3.1p1" => "6c5ba423732e",
    "2017.3.1f1" => "fc1d3344e6ea",
    "2017.3.0f3" => "a9f86dcd79df",
    "2017.2.1f1" => "94bf3f9e6b5e",
    "2017.2.0f3" => "46dda1414e51",
    "2017.1.2f1" => "cc85bf6a8a04",
    "2017.1.1p4" => "4b0ddcd3f6ad",
    "2017.1.1f1" => "5d30cf096e79",
    "2017.1.0f3" => "472613c02cf7",
    "2017.1.0b7" => "8a1ad67dc191",
    "5.6.2f1" => "a2913c821e27",
    "5.6.1f1" => "2860b30f0b54",
    "5.6.1p1" => "74c1f4917542",
    "5.6.0p2" => "bbd5ca01a0ea",
    "5.6.0f3" => "497a0f351392",
    "5.5.3p2" => "f15b2772e4d0",
    "5.5.3f1" => "4d2f809fd6f3",
    "5.5.2f1" => "3829d7f588f3",
    "5.5.2p1" => "9360c5517afe",
    "5.5.1f1" => "88d00a7498cd",
    "5.5.0f3" => "38b4efef76f0",
    "5.4.5f1" => "68943b6c8c42",
    "5.4.5p5" => "8c4c93a90556",
    "5.6.3p1" => "9c92e827232b"
  }
end

def package_urls beta
  beta_release = { UNITY => "MacEditorInstaller/Unity-$VERSION$.pkg" }
  release = { UNITY => "MacEditorInstaller/Unity.pkg" }
  extra = (beta) ? beta_release : release
  {
    DOWNLOAD_ASSISTANT => "UnityDownloadAssistant-$VERSION$.dmg",
    STANDART_ASSETS => "MacStandardAssetsInstaller/StandardAssets-$VERSION$.pkg",
    ANDROID_SUPPORT => "MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-$VERSION$.pkg",
    IOS_SUPPORT => "MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-$VERSION$.pkg",
    WEBGL_SUPPORT => "MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-$VERSION$.pkg",
    WINDOWS_SUPPORT => "MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-$VERSION$.pkg",
    LINUX_SUPPORT => "MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-$VERSION$.pkg"
  }.merge(extra)
end

def packages
  [
    UNITY,IOS_SUPPORT,ANDROID_SUPPORT,WEBGL_SUPPORT,WINDOWS_SUPPORT,LINUX_SUPPORT,STANDART_ASSETS,DOWNLOAD_ASSISTANT
  ]
end

def retrieve_package_ids package_name, version, version_hash, package_url
  cache_name = ".cache/#{package_name}-ids@#{version}"
  packages = []
  if File.exist?(cache_name)
    File.open(cache_name){|f|
      packages = f.read.lines
    }
    return packages
  end

  Dir.chdir(File.expand_path('~/Library/Caches/Homebrew/Cask')) {|dir|
    extension = File.extname package_url
    file_name = "#{package_name}@#{version}--#{version},#{version_hash}#{extension}"
    `curl -o #{file_name} -L -s #{package_url}` unless File.exist? file_name
    out = `"$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_ids_in_pkg" #{File.join(dir,"#{file_name}")}`
    packages = out.lines.map {|line| line.gsub('(+)','').strip}
  }
  FileUtils.mkdir_p(".cache")
  File.open(cache_name, "w") {|f| f.write(packages.join('\n'))}
  packages
end

def retrieve_sha256 package_name, version, version_hash, package_url
  cache_name = ".cache/#{package_name}-sha256@#{version}"
  sha = ""

  if File.exist?(cache_name)
    File.open(cache_name){|f|
      sha = f.read
    }
    return sha.strip
  end

  FileUtils.mkdir_p(File.expand_path('~/Library/Caches/Homebrew/Cask'))
  Dir.chdir(File.expand_path('~/Library/Caches/Homebrew/Cask')) {|dir|
    extension = File.extname package_url
    file_name = "#{package_name}@#{version}--#{version},#{version_hash}#{extension}"
    `curl -o #{file_name} -L -s #{package_url}` unless File.exist? file_name
    sha = `cat #{file_name} | shasum -a 256`
    sha = sha.sub('  -','').strip
  }

  FileUtils.mkdir_p(".cache")
  File.open(cache_name, "w") {|f| f.write(sha)}
  sha
end

desc "generate version casks"
task :generate_versions do
  puts "Generate unity cask version files"

  versions_map.each_pair do |version, version_hash|
    packages.each do |package_name|
      puts "------------------------------------------------------"
      puts "generate pakage: #{package_name}-#{version}"
      puts "is beta: #{beta? version}"

      base_url = unity_base_url beta?(version)
      package_url = package_urls(beta?(version))[package_name]

      package_url = File.join(base_url, version_hash, package_url).gsub("$VERSION$", version)
      sha256 = retrieve_sha256 package_name, version, version_hash, package_url
      packages = retrieve_package_ids package_name, version, version_hash, package_url

      puts "package-version: #{version},#{version_hash}"
      puts "package_url: #{package_url}"
      puts "package sha256: #{sha256}"
      puts "package ids: #{packages}"
      puts ""

      b = binding

      template_path = File.join("templates", "#{package_name}.rb.erb")
      output_path = File.join("Casks", "#{package_name}@#{version}.rb")

      File.open(template_path) do |t|
        erb = ERB.new(t.read)
        out = erb.result b
        FileUtils.mkdir_p(File.dirname(output_path))
        File.open(output_path, 'w') { |f| f.write(out) }
      end
    end
  end
end

desc "clean download and sha cache"
task :clean_cache do
  FileUtils.remove_dir(".cache")
end

task :default => :generate_versions
