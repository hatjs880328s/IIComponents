#
# Be sure to run `pod lib lint IIComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IIComponents'
  s.version          = '0.1.2'
  s.summary          = 'IIUIComponents - ui组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  IIUIComponents:
IIUIComponents - ui组件库
1.MoreTab
2.IIDatePickerView
                       DESC

  s.homepage         = 'https://github.com/hatjs880328s/IIComponents'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hatjs880328s' => 'shanwzh@inspur.com' }
  s.source           = { :git => 'https://github.com/hatjs880328s/IIComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'IIDatePickerView' do |ss|
      ss.source_files = 'IIComponents/Classes/IIDatePickerView/*.*'
  end

  s.subspec 'MoreTab' do |ss|
      ss.source_files = 'IIComponents/Classes/MoreTab/*.*'
  end

  s.swift_version = '4.2'
  
  # s.resource_bundles = {
  #   'IIComponents' => ['IIComponents/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'IIUIAndBizConfig'
  s.dependency 'SnapKit'
  s.dependency 'III18N'
  s.dependency 'IISwiftBaseUti'
end
