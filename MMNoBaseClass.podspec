#
# Be sure to run `pod lib lint MMNoBaseClass.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMNoBaseClass'
  s.version          = '0.0.2'
  s.summary          = 'MMNoBaseClass is based on AOP to replace inherit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MyGitHubModule/MMNoBaseClass'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anotherchase@gmail.com' => 'AnotherChase@gmail.com' }
  s.source           = { :git => 'https://github.com/MyGitHubModule/MMNoBaseClass.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #ViewController
  s.subspec 'ViewController' do |ss|
    ss.source_files = 'MMNoBaseClass/Classes/ViewController/*'
  end

  #s.source_files = 'MMNoBaseClass/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MMNoBaseClass' => ['MMNoBaseClass/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Aspects', '~> 1.4.1'
end
