#!/usr/bin/env bash

set -e

xcodebuild -project HEXColor.xcodeproj -scheme "HEXColor-iOS" -destination "platform=iOS Simulator,name=iPhone 6" test

xcodebuild -project HEXColor.xcodeproj -scheme "HEXColor-watchOS" -destination "platform=watchOS Simulator,name=Apple Watch - 38mm" build
