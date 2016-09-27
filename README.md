<p align="center">
  <img src="https://raw.githubusercontent.com/yeahdongcn/UIColor-Hex-Swift/master/home-hero-swift-hero.png">
</p>

UIColor+Hex, now Swift.
[![Build Status](https://travis-ci.org/yeahdongcn/UIColor-Hex-Swift.svg?branch=master)](https://travis-ci.org/yeahdongcn/UIColor-Hex-Swift) 
=================
![](https://img.shields.io/badge/Swift-3.0-blue.svg?style=flat)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Convenience method for creating autoreleased color using RGBA hex string.

    var strokeColor = UIColor("#FFCC00").CGColor // Solid color
    
    var fillColor = UIColor("#FFCC00DD").CGColor // Color with alpha

    var backgroundColor = UIColor("#FFF") // Supports shorthand 3 character representation

    var menuTextColor = UIColor("#013E") // Supports shorthand 4 character representation (with alpha)

    var hexString = UIColor.redColor().hexString() // "#FF0000FF"

##Installation

###[CocoaPods](http://cocoapods.org)

Simply add the following lines to your `Podfile`:
```ruby
# required by CocoaPods 0.36.0.rc.1 for Swift Pods
use_frameworks! 

pod 'UIColor_Hex_Swift', '~> 3.0.1'
```

Then import it where you use it:
```
import UIColor_Hex_Swift
```

*(CocoaPods v0.36 or later required. See [this blog post](http://blog.cocoapods.org/Pod-Authors-Guide-to-CocoaPods-Frameworks/) for details.)*

###[Carthage](http://github.com/Carthage/Carthage)

Simply add the following line to your `Cartfile`:

```ruby
github "yeahdongcn/UIColor-Hex-Swift" >= 3.0.1
```
=================
See more in [RSBarcodes_Swift](https://github.com/yeahdongcn/RSBarcodes_Swift) and [objc version](https://github.com/yeahdongcn/RSBarcodes) 
