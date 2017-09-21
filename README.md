# Codable-WMO-bug

This repository contains a project that can be used to reproduce a Swift 4 bug that results in inability to deserialize an object that has a field of a `RawRepresentable` type while the `rawValue` of that type is accessed in a function that is never called.

### Environment
```
Apple Swift version 4.0 (swiftlang-900.0.65 clang-900.0.37)
Target: x86_64-apple-macosx10.9
Xcode: 9.0 (9A235)
macOS: 10.12.6 (16G29)
```

### How to reproduce

This repo contains an Xcode project with two almost identical schemes, but in one of them WMO is enabled, while in the other it's disabled. In order to reproduce the issue run the following commands in the Terminal:

```
xcodebuild clean test -scheme CodableWMOBug-O0
```
— The test should pass.

```
xcodebuild clean test -scheme CodableWMOBug-WMO
```
— The test fails.
