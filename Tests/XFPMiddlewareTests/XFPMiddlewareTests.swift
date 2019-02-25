import XCTest
import Vapor
import HTTP
import XFPMiddleware

class XFPMiddlewareTests: XCTestCase {
    static let allTests = [
        ("testHTTP", testHTTP),
        ("testHTTPS", testHTTPS)
    ]
    
    var app: Application!
    
    override func setUp() {
        var services = Services.default()
        var middlewares = MiddlewareConfig()
        middlewares.use(XFPMiddleware())
        services.register(middlewares)
        
        let router = EngineRouter.default()
        router.get { req -> HTTPStatus in
            return .ok
        }
        services.register(router, as: Router.self)
        
        app = try! Application(services: services)
    }

    func testHTTP() throws {
        let request = Request(http: .init(method: .GET, url: "/", headers: .init([("X-Forwarded-Proto", "http")])), using: app)
        let response = try app.make(Responder.self).respond(to: request).wait()
        XCTAssert(response.http.status == .temporaryRedirect)
    }
    
    func testHTTPS() throws {
        let request = Request(http: .init(method: .GET, url: "/", headers: .init([("X-Forwarded-Proto", "https")])), using: app)
        let response = try app.make(Responder.self).respond(to: request).wait()
        XCTAssert(response.http.status == .ok)
    }
}
