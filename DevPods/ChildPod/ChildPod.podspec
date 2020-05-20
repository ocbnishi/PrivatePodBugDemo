Pod::Spec.new do |s|

  s.name         = 'ChildPod'
  s.version      = '0.0.1'
  s.summary      = 'A short description of ChildPod.'
  s.homepage     = 'https://google.com'
  s.author       = { 'Dan Khramov' => 'hey@gmail.com' }
  s.source       = { :http => 'file:' + __dir__ + '/' }

  s.ios.deployment_target = '13.0'
  s.source_files = 'ChildPod/**/*.{swift}'

end
