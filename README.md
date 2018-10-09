# 🔮 magic-ball
Main project

## History

### 1.0
- Created Xcode project MagicBall

### 1.1
- Setup Gemfile
- Created local pod RandomGenerator: `bundle exec pod lib create RandomGenerator`
- Created Podfile: `bundle exec pod init`
- Integrated RandomGenerator into MagicBall (see *Podfile*)

### 1.2
- Created local pod Tutorial: `bundle exec pod lib create Tutorial`
- Integrated RandomGenerator into Tutorial as a local pod (see *Tutorial.podspec* and *Tutorial/Example/Podfile*)
- Integrated Tutorial into MagicBall (see *Podfile*)
- Fixed Xcode 10 issue with not compiling new changes from local pods
- As a result, we are able to develop separate interdependent modules in a single repo using [CocoaPods](https://cocoapods.org)

