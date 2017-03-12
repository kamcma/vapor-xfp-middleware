import XCTest
@testable import XFPMiddleware

class XFPMiddlwareTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(XFPMiddleware().text, "Hello, World!")
    }

    static var allTests: [(String, (XFPMiddlewareTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample)
        ]
    }
}
