#!/usr/bin/env bash

set -e

xcodebuild -project HEXColor.xcodeproj -scheme "HEXColor-iOS" -destination "platform=iOS Simulator,name=iPhone 6" clean test

xcodebuild -project HEXColor.xcodeproj -scheme "HEXColor-watchOS" -destination "platform=watchOS Simulator,name=Apple Watch - 38mm" clean build

xcodebuild -project HEXColor.xcodeproj -scheme "HEXColor-macOS" -destination "platform=OS X,arch=x86_64" clean build
