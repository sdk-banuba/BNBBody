// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.0-9-g9cd2ba648"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.0-9-g9cd2ba648/BNBBody.zip",
            checksum: "2b4704dc85725970436af7d8002ebcfc593ed870bd163189e25368ef3971bf3c"
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
