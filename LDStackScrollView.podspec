#
# Be sure to run `pod lib lint LDStackScrollView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LDStackScrollView'
  s.version          = '1.0'
  s.summary          = 'A simple UIView with a UIStackView embed in a UIScrollView.'


  s.homepage         = 'https://github.com/leoderbois/LDStackScrollView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leoderbois' => 'developer@leoderbois.com' }
  s.source           = { :git => 'https://github.com/leoderbois/LDStackScrollView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/**/*.swift'

  # s.resource_bundles = {
  #   'LDStackScrollView' => ['LDStackScrollView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
