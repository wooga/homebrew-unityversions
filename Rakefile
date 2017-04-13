
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

base_url = "http://netstorage.unity3d.com/unity/$VERSION_HASH$"

def versions_map
  {
    "5.6.0f3" => "497a0f351392",
    "5.5.3f1" => "4d2f809fd6f3",
    "5.4.5f1" => "68943b6c8c42"
  }
end

def package_urls
  {
    UNITY => "MacEditorInstaller/Unity.pkg",
    DOWNLOAD_ASSISTANT => "UnityDownloadAssistant-$VERSION$.dmg",
    STANDART_ASSETS => "MacStandardAssetsInstaller/StandardAssets-$VERSION$.pkg",
    ANDROID_SUPPORT => "MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-$VERSION$.pkg",
    IOS_SUPPORT => "MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-$VERSION$.pkg",
    WEBGL_SUPPORT => "MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-$VERSION$.pkg",
    WINDOWS_SUPPORT => "MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-$VERSION$.pkg",
    LINUX_SUPPORT => "MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-$VERSION$.pkg"
  }
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

task :generate_versions do
  puts "Generate unity cask version files"

  versions_map.each_pair do |version, version_hash|
    packages.each do |package_name|
      puts "------------------------------------------------------"
      puts "generate pakage: #{package_name}-#{version}"

      package_url = File.join(base_url, package_urls[package_name]).gsub("$VERSION_HASH$", version_hash).gsub("$VERSION$", version)
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

task :clean_cache do
  FileUtils.remove_dir(".cache")
end

task :default => :generate_versions


