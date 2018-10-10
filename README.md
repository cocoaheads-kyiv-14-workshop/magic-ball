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

## Further Steps

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

