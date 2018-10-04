# CaseIterableTableViewSections
Example of using Swift 4.2's CaseIterable protocol to enable table views with multiple sections to be driven by enum data.

## Introduction
CaseIterable is a new protocol introduced in Swift 4.2, as proposed by [SE-0194](https://github.com/apple/swift-evolution/blob/master/proposals/0194-derived-collection-of-enum-cases.md). This allows you to extract data about individual sections into enums, letting the code be more verbose while giving you the freedom to modify your displayed values. This enables better reasoning about the data available without having to worry about the actual content you're referencing.
