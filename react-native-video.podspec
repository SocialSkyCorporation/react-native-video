require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-video"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = package["author"]

  s.homepage       = 'https://github.com/SocialSkyCorporation/react-native-video'

  s.license      = package["license"]

  s.ios.deployment_target = "7.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/SocialSkyCorporation/react-native-video.git", :tag => "#{s.version}" }

  s.source_files  = "ios/*.{h,m}"

  s.dependency "React"
end
