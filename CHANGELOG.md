# Changelog

## 1.0.1

- Added Swift Package Manager support via `Package.swift` for Objective-C/Objective-C++ sources.
- Introduced a minimal SPM public-header facade under `Sources/include` without moving existing source directories.
- Added `MiniAppUIKit.h` umbrella header and `module.modulemap` to formalize module exports for SPM consumers.
- Kept public API exposure aligned with existing CocoaPods `public_header_files` strategy (`PublishHeaders`, `OverlayStatusControllerImpl`, `UIKitRuntimeUtils`, and `ObjCRuntimeUtils`).
- Added required SPM header search paths and forwarding compatibility headers to resolve Clang module compilation in SPM/Xcode builds.
