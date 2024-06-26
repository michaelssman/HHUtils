#
# Be sure to run `pod lib lint HHUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHUtils'
  s.version          = '0.4.9'
  s.summary          = 'A short description of HHUtils.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '基础组件'

  s.homepage         = 'https://github.com/michaelssman/HHUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'michaelstrongself@outlook.com' => 'michaelstrongself@outlook.com' }
  s.source           = { :git => 'https://github.com/michaelssman/HHUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'HHUtils/Classes/**/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'HHUtils' => ['HHUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Alamofire', '~> 5.0'
  s.dependency 'RxSwift', '6.5.0'
  s.dependency 'RxCocoa', '6.5.0'
  s.dependency 'SnapKit', '5.6.0'
  s.dependency 'MBProgressHUD', '1.2.0'

end
