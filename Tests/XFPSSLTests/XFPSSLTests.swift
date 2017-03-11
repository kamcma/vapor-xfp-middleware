import XCTest
@testable import XFPSSL

class XFPSSLTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(XFPSSL().text, "Hello, World!")
    }

    static var allTests: [(String, (XFPSSLTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample)
        ]
    }
}
