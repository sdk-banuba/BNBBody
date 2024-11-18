// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-185-gcf256de1ef"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-185-gcf256de1ef/BNBBody.zip",
            checksum: "da9c0e5e7f6dc62fccedf09cf13d6e7ed1dee64b702099787c21b052267bfa99"
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
