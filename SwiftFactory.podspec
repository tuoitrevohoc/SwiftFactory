#
# Be sure to run `pod lib lint SwiftState.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftFactory'
  s.version          = '0.1.0'
  s.summary          = 'A tiny lib to manager dependencies.'

  s.description      = <<-DESC
Swift Factory is a tiny dependency resolver library for swift.
                       DESC

  s.homepage         = 'https://github.com/tuoitrevohoc/SwiftFactory'
  s.license          = { :type => 'WTFLICENSE', :file => 'LICENSE' }
  s.author           = { 'tuoitrevohoc' => 'tuoitrevohoc@me.com' }
  s.source           = { :git => 'https://github.com/tuoitrevohoc/SwiftState.git', :tag => s.version.to_s }

  s.social_media_url = 'https://twitter.com/tuoitrevohoc'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftFactory/**/*'

end
