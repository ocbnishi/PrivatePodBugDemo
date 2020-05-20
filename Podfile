platform :ios, '13.0'

target 'PrivatePodBugDemo' do
  use_frameworks!
  
  # # What I want:
  # pod 'MainPod', :path => 'DevPods/MainPod'

  # # What I have to do every time:
  # pod 'ChildPod', :path => 'DevPods/ChildPod'
  # pod 'MainPod', :path => 'DevPods/MainPod'

  # # What I get if I do what I want:
  # [!] Unable to find a specification for `ChildPod` depended upon by `MainPod`
  
  # MainPod already includes ChildPod.
  # But for some reason I need to include Child pod too.
  # I don't need it in entire app but only in MainPod.

  # pod 'ChildPod', :path => 'DevPods/ChildPod'
  pod 'MainPod', :path => 'DevPods/MainPod'
end
