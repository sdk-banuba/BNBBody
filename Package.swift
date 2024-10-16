// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.15.2-43-g894e9ef7d"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.15.2-43-g894e9ef7d/BNBBody.zip",
            checksum: "1b35d23ee2f67ffbc9893eb56551354c59abb034bb86e8233528a041093023b9"
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
