import XCTest
@testable import CommonUI

final class CommonUITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CommonUI().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}