import UIKit

var greeting = "Hello, playground"


class CurrencyFormatterTests: XCTestCase {
    func testFormat() {
        let formatter = CurrencyFormatter()
        // 120 USD
        XCTAssertEqual(formatter.format(amount: 120, decimalCount: 0), "120")

        // 12000 cents
        XCTAssertEqual(formatter.format(amount: 12000, decimalCount: 2), "120")

        // 12520 cents
        XCTAssertEqual(formatter.format(amount: 12520, decimalCount: 2), "125.2")
    }
}


extension Metric: CustomStringConvertible {
    var description: String {
        let formattedValue = String(format: "%.2f", value)
        return "\(name): \(formattedValue)"
    }
}




extension Metric: CustomStringConvertible {
    var description: String {
        let formattedValue = String(format: "%.2f", value)
        return "\(name): \(formattedValue)"
    }
}
