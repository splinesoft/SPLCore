# SPLCore [![Circle CI](https://circleci.com/gh/splinesoft/SPLCore.svg?style=svg)](https://circleci.com/gh/splinesoft/SPLCore) [![Coverage Status](http://codecov.io/github/splinesoft/SPLCore/coverage.svg?branch=master)](http://codecov.io/github/splinesoft/SPLCore?branch=master)

Shared dependencies for [Splinesoft](http://splinesoft.net) apps. SPLCore was extracted from my app [MUDRammer, a Modern MUD Client for iPhone and iPad](https://itunes.apple.com/us/app/mudrammer-a-modern-mud-client/id597157072?mt=8).

SPLCore has 3 parts:

### Additions

Various category additions.

### Models

- `SSMagicManagedObject`: A core `NSManagedObject` subclass with several helpers for use with [MagicalRecord](https://github.com/magicalpanda/magicalrecord).

### SPLCore

- `SPLCore.h`: base header file.
- `SPLDebug.h`: macros and debugging helpers.
- `SPLFloat.h`: helpers for floats and doubles on arm64/armv7. See also [CGFloat in a 64-bit world](http://list.her.sh/cgfloat-and-arm64/).

## Install

SPLCore is available via the [splinesoft specs repo](https://github.com/splinesoft/specs).

```ruby
# Podfile

source 'https://github.com/splinesoft/specs.git'
source 'https://github.com/CocoaPods/Specs.git'

pod 'SPLCore', '~> 1.0.1'
```
