// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-70-g2e0f1ab74e"

let package = Package(
    name: "BNBBody",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBBody",
            targets: [
                "BNBBody",
                "BNBBody_BNBSdkCore",
                "BNBBody_BNBEffectPlayer",
                "BNBBody_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBBody",
            url: "None",
            checksum: "f319d66d7db22d5f04da9c8e31774a1b13f9aad831fb828049ac6f19c0b48b6c"
        ),
        .target(
            name: "BNBBody_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBBody_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBBody_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
