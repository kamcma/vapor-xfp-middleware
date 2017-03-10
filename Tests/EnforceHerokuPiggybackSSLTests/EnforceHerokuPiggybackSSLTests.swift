import XCTest
@testable import EnforceHerokuPiggybackSSL

class EnforceHerokuPiggybackSSLTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(vapor_heroku_piggyback_ssl().text, "Hello, World!")
    }

    static var allTests: [(String, (vapor_heroku_piggyback_sslTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
