#
# Be sure to run `pod lib lint CotterIOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see htps://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Cotter'
  s.version          = '1.5.20'
  s.summary          = 'Cotter is the client SDK for Cotter authentication services'
  s.swift_versions   = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CotterIOS simplifies client's integration with Cotter. It is an SDK that provides necessary pages and API services that connects your application to Cotter authentication services.
                       DESC

  s.homepage         = 'https://github.com/cotterapp/ios-sdk.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'BSD', :file => 'LICENSE' }
  s.author           = { 'Cotter Team' => 'team@cotter.app' }
  s.source           = { :git => 'https://github.com/cotterapp/ios-sdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.platform              = :ios
  s.ios.deployment_target = '10.0'

  s.source_files = 'Source/**/*.swift'
  s.resource_bundles = {
      'Cotter' => ['Source/**/*.{png,storyboard,lproj,xib,xcassets}']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.static_framework = true
  s.frameworks = 'UIKit'
  s.dependency 'TTGSnackbar', '1.10.3'
  s.dependency 'OneSignal', '2.15.3'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

#  s.test_spec 'Tests' do |test_spec|
#    test_spec.source_files = 'Example/Tests/**/*.{swift}'
#  end
end
