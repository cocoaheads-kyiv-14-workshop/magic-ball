# 🔮 magic-ball
Main project

## History

### [ 1.0 ](../../releases/1.0)
- Created Xcode project MagicBall

### [ 1.1 ](../../releases/1.1)
- Setup Gemfile
- Created local pod RandomGenerator: `bundle exec pod lib create RandomGenerator`
- Created Podfile: `bundle exec pod init`
- Integrated RandomGenerator into MagicBall (see *Podfile*)

### [ 1.2 ](../../releases/1.2)
- Created local pod Tutorial: `bundle exec pod lib create Tutorial`
- Integrated RandomGenerator into Tutorial as a local pod (see *Tutorial.podspec* and *Tutorial/Example/Podfile*)
- Integrated Tutorial into MagicBall (see *Podfile*)
- Fixed Xcode 10 issue with not compiling new changes from local pods
- As a result, we are able to develop separate interdependent modules in a single repo using [CocoaPods](https://cocoapods.org)

---

We now need to extract local pods into private repos:

- [ RandomGenerator ](https://github.com/cocoaheads-kyiv-14-workshop/random-generator)
- [ Tutorial ](https://github.com/cocoaheads-kyiv-14-workshop/tutorial)
- [ Private Specs repo ](https://github.com/cocoaheads-kyiv-14-workshop/specs)

### [ 1.3 ](../../releases/1.3)
- Registered private [ Specs ](https://github.com/cocoaheads-kyiv-14-workshop/specs) repo: `bundle exec pod repo add magic-ball-specs git@github.com:cocoaheads-kyiv-14-workshop/specs.git`
- Moved [ RandomGenerator ](https://github.com/cocoaheads-kyiv-14-workshop/random-generator) from MagicBall local pods into separate private repo pod
- Published RandomGenerator 0.1.0 version: `bundle exec pod repo push magic-ball-specs RandomGenerator.podspec --allow-warnings --verbose`
- Switched Tutorial to private RandomGenerator repo instead of local one (see *Tutorial/Example/Podfile*)
- Switched MagicBall to private RandomGenerator repo instead of local one (see *Podfile*)
- As a result, we are able to develop mixed interdependent modules - local and from private repos at the same time using [CocoaPods](https://cocoapods.org)

### [ 1.4 ](../../releases/1.4)
- Moved [ Tutorial ](https://github.com/cocoaheads-kyiv-14-workshop/tutorial) from MagicBall local pods into separate private repo pod
- Published Tutorial 0.1.0 version: `bundle exec pod repo push magic-ball-specs Tutorial.podspec --allow-warnings --verbose --sources='git@github.com:cocoaheads-kyiv-14-workshop/specs.git',master`
- Switched MagicBall to private Tutorial repo instead of local one (see *Podfile*)
- As a result, we are able to develop private interdependent modules at the same time using [CocoaPods](https://cocoapods.org)

---

## Automating things

This `pod repo push ...` command and the whole flow of updating version and creating a new tag might become really annoying.    
So we decide to automate the whole release process. [Fastlane](https://fastlane.tools) will help us with this.

### [ RandomGenerator 0.1.1 ](https://github.com/cocoaheads-kyiv-14-workshop/random-generator/releases/0.1.1)

- Created lane to automate routine release tasks:    
  `bundle exec fastlane release` on any branch - that's how simple it is    
  `bundle exec fastlane release version:1.2.3 message:"my new version"` - advanced usage
  - register specs repo if one isn't yet in your system
  - check if current branch is clean
  - checkout to *master* and pull any changes
  - update version in podspec, either to one from *version* argument, or patch update by default
  - commit and push to master with message, either from *message* argument, or default one
  - create tag either from  *version* argument, or from default patch version update and push it
  - finally, validate and push pod to specs repo

We now need to share this lane across multiple private pod repos.    
Git submodules? Another pod? :) [Fastlane import](https://docs.fastlane.tools/advanced/Fastfile/#importing-another-fastfile)!

### [ RandomGenerator 0.1.2 ](https://github.com/cocoaheads-kyiv-14-workshop/random-generator/releases/0.1.2), [ Tutorial 0.1.1 ](https://github.com/cocoaheads-kyiv-14-workshop/tutorial/releases/0.1.1)
- Created [shared-lanes](https://github.com/cocoaheads-kyiv-14-workshop/shared-lanes) repo to store lanes that should be shared between private pods
- Imporing *release* lane in RandomGenerator and Tutorial (see *fastlane/Fastfile*)

### [ 1.5 ](../../releases/1.5)

- Introduced [Fastlane](https://fastlane.tools) and shared it between private pods
