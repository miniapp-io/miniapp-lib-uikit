// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MiniAppUIKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MiniAppUIKit",
            targets: ["MiniAppUIKit"]
        )
    ],
    targets: [
        .target(
            name: "MiniAppUIKit",
            path: "Sources",
            publicHeadersPath: "include",
            cSettings: [
                .define("MINIMAL_ASDK"),
                .define("OMIT_BRIDGING_HEADER"),
                .headerSearchPath("PublishHeaders"),
                .headerSearchPath("PublishHeaders/AsyncDisplayKit"),
                .headerSearchPath("PublishHeaders/AppBundle"),
                .headerSearchPath("PublishHeaders/CryptoUtils"),
                .headerSearchPath("PublishHeaders/EncryptionProvider"),
                .headerSearchPath("PublishHeaders/FastBlur"),
                .headerSearchPath("PublishHeaders/MurMurHash32"),
                .headerSearchPath("PublishHeaders/NumberPluralizationForm"),
                .headerSearchPath("PublishHeaders/RLottieBinding"),
                .headerSearchPath("PublishHeaders/Sunrise"),
                .headerSearchPath("ObjCRuntimeUtils"),
                .headerSearchPath("OverlayStatusControllerImpl"),
                .headerSearchPath("UIKitRuntimeUtils")
            ]
        )
    ]
)
