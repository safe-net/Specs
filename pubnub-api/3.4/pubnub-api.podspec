Pod::Spec.new do |s|
  s.name = 'pubnub-api'
  s.osx.deployment_target = '10.7'
  s.ios.deployment_target = '5.0'
  s.version  =  '3.4'
  s.summary  =  'PubNub makes Real-time Real Easy with a Simple Communications API.'
  s.homepage =  'https://github.com/pubnub/objective-c'
  s.author   =  { 'PubNub' => 'hello@pubnub.com' }
  s.source   =  { :git => 'https://github.com/safe-net/objective-c.git', :commit => 'd5519a6a9f7c49bdc3981c11175920cd5c0f34af' }
  s.license =  'MIT'
  s.source_files =  FileList.new('iOS/3.4/pubnub/libs/PubNub/**/*.{h,m}') do |fl|
    fl.exclude('**/UIDevice+PNAdditions*')
  end
  s.requires_arc = true
  s.frameworks = 'CFNetwork','SystemConfiguration'
  s.prefix_header_contents = '#import "PNImports.h"'
  s.dependency 'JSONKit', '~> 1.4.0'
  s.subspec 'UIAdditions' do |ui|
    s.platform = :ios, '5.0'
    ui.source_files = '**/UIDevice+PNAdditions*'
  end
end

