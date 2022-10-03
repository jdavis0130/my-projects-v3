import UIKit

var greeting = "Hello, playground"

func warnTheSheep(_ queue: [String]) -> String {
  return ""
}

import XCTest

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Test Cases", basicTestCases),
    ]

    func basicTestCases() {
      XCTAssertEqual(warnTheSheep(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]), "Oi! Sheep number 2! You are about to be eaten by a wolf!", "Testing for \(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]).")
      XCTAssertEqual(warnTheSheep(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]), "Oi! Sheep number 5! You are about to be eaten by a wolf!", "Testing for \(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]).")
      XCTAssertEqual(warnTheSheep(["wolf", "sheep", "sheep", "sheep", "sheep", "sheep", "sheep"]), "Oi! Sheep number 6! You are about to be eaten by a wolf!", "Testing for \(["sheep", "sheep", "wolf"]).")
      XCTAssertEqual(warnTheSheep(["sheep", "wolf", "sheep"]), "Oi! Sheep number 1! You are about to be eaten by a wolf!", "Testing for \(["sheep", "wolf", "sheep"])")
      XCTAssertEqual(warnTheSheep(["sheep", "sheep", "wolf"]), "Pls go away and stop eating my sheep", "Testing for \(["sheep", "sheep", "wolf"]).")
      XCTAssertEqual(warnTheSheep(["wolf"]), "Pls go away and stop eating my sheep", "Testing for \(["wolf"]).")
    }
}






