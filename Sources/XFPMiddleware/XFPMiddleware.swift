import HTTP
import URI

public struct XFPMiddleware: Middleware {
    let enabled: Bool
    public init(enabled: Bool = true) {
        self.enabled = enabled
    }
    public func respond(to request: Request, chainingTo next: Responder) throws -> Response {
        guard enabled, request.headers["X-Forwarded-Proto"] == "http" else {
            return try next.respond(to: request)
        }
        request.uri.scheme = "https"
        return Response(redirect: request.uri.description)
    }
}
