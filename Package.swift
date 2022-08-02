// swift-tools-version:5.5
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
    platforms: [
          .macOS(.v10_15)
      ],
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", from: "3.1.2"),
		.package(url: "https://github.com/rezahussain/Perfect-HTTP/", branch: "master"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-CZlib-src.git", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", .product(name: "PerfectNet", package: "Perfect-Net"), .product(name: "PerfectHTTP", package: "Perfect-HTTP"), .product(name: "PerfectCZlib", package: "Perfect-CZlib-src") ]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
