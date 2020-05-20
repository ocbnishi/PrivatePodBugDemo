Pod::Spec.new do |s|

  s.name         = 'MainPod'
  s.version      = '0.0.1'
  s.summary      = 'A short description of MainPod.'
  s.homepage     = 'https://google.com'
  s.author       = { 'Dan Khramov' => 'hey@gmail.com' }
	s.source       = { :http => 'file://Users/art/workspace/code/weeek-mobile-ios/DevPods/MainPod' }

  s.ios.deployment_target = '13.0'
	s.source_files = 'MainPod/**/*.{swift}'

  s.dependency 'ChildPod'
end