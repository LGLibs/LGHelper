本项目由 Friend-LGA/LGHelper fork 而来，又根据自己的需求增加了一些宏定义，并且没有合并到 Friend-LGA/LGHelper的项目当中。

# LGHelper

iOS helper 包含了很多有用的宏和方法

## 安装

### With source code

[Download repository](https://github.com/smartdj/LGHelper/archive/master.zip), then add [LGHelper directory](https://github.com/smartdj/LGHelper/blob/master/LGHelper/) to your project.

### With CocoaPods

CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. To install with cocoaPods, follow the "Get Started" section on [CocoaPods](https://cocoapods.org/).

#### Podfile
```ruby
platform :ios, '6.0'
pod 'LGHelper', :git => 'https://github.com/smartdj/LGHelper.git'
```

### With Carthage

Carthage is a lightweight dependency manager for Swift and Objective-C. It leverages CocoaTouch modules and is less invasive than CocoaPods. To install with carthage, follow the instruction on [Carthage](https://github.com/Carthage/Carthage/).

#### Cartfile
```
github "smartdj/LGHelper" ~> 1.1.0
```

## Usage

In the source files where you need to use the library, import the header file:

```objective-c
#import "LGHelper.h"
```

### More

For more details see [LGHelper.h](https://github.com/smartdj/LGHelper/blob/master/LGHelper/LGHelper.h)

## License

LGHelper is released under the MIT license. See [LICENSE](https://raw.githubusercontent.com/smartdj/LGHelper/master/LICENSE) for details.
