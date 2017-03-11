import XCTest
@testable import EnforceXFPSSLTests

class EnforceXFPSSLTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(EnforceXFPSSL().text, "Hello, World!")
    }

    static var allTests: [(String, (EnforceXFPSSLTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample)
        ]
    }
}
