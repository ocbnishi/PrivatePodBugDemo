# Explanation

For some reason I need private local pods (DevPods) that contains in app.

Sometimes it has many pods that contains another pods which shouldn't be included in entire application but only in child pods.

`pod install` with only `pod 'MainPod', :path => 'DevPods/MainPod'` in `./Podfile` produces this error:
``` bash
[!] Unable to find a specification for `ChildPod` depended upon by `MainPod
```
## Contents
* [What I want to](#What-I-want-to) 
* [Podfiles](Podfiles)
* [Podspecs](Podspecs)

## What I want to:
I want to avoid of including subpods that not used by app but used by another subpods
It's too complicated when you are using 10+ local pods that uses their own local pods.
```
PrivatePodBugDemo (App)
└─ MainPod
   └─ ChildPod
```
But now I have to do everytime this thing:
```
PrivatePodBugDemo (App)
├─ ChildPod
└─ MainPod
   └─ ChildPod
```

## Podfiles:
```ruby
# ./Podfile
platform :ios, '13.0'

target 'PrivatePodBugDemo' do
  use_frameworks!

  # pod 'ChildPod', :path => 'DevPods/ChildPod' # This is the problem when there are too much pods
  pod 'MainPod', :path => 'DevPods/MainPod'
end
```
```ruby
# ./DevPods/MainPod/Podfile
platform :ios, '13.0'

target 'MainPod' do
  use_frameworks!

  pod 'ChildPod', :path => '../ChildPod'
end
```
```ruby
# ./DevPods/ChildPod/Podfile
platform :ios, '13.0'

target 'MainPod' do
  use_frameworks!

end
```
## Podspecs:
[MainPod.podspec](https://github.com/ocbnishi/PrivatePodBugDemo/blob/master/DevPods/MainPod/MainPod.podspec)

[ChildPod.podspec](https://github.com/ocbnishi/PrivatePodBugDemo/blob/master/DevPods/ChildPod/ChildPod.podspec)
