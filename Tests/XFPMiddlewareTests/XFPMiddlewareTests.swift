import XCTest
import Vapor
import HTTP
import XFPMiddleware
import Testing

class XFPMiddlewareTests: XCTestCase {
    static var allTests = [
        ("testXFPMiddleware", testXFPMiddleware)
    ]

    override func setUp() {
        Testing.onFail = XCTFail
    }

    func testXFPMiddleware() throws {
        let drop = try Droplet()

        let protected = drop.grouped(XFPMiddleware.init())

        protected.get { _ in
            return Response(status: .ok)
        }

        let httpReq = Request(method: .get, uri: "/")
        httpReq.uri.scheme = "http"
        httpReq.headers["X-Forwarded-Proto"] = "http"

        let httpsReq = Request(method: .get, uri: "/")
        httpsReq.uri.scheme = "http"
        httpsReq.headers["X-Forwarded-Proto"] = "https"

        try drop.testResponse(to: httpReq)
            .assertStatus(is: .seeOther)

        try drop.testResponse(to: httpsReq)
            .assertStatus(is: .ok)

    }
}
