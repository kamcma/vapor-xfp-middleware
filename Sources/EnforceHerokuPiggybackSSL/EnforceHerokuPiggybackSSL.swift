import HTTP
import URI

public struct EnforceHerokuPiggybackSSL: Middleware {
    public func respond(to request: Request, chainingTo next: Responder) throws -> Response {
        if request.headers["X-Forwarded-Proto"] == "https" {
            return try next.respond(to: request)
        }
        request.uri.scheme = "https"
        return Response(redirect: request.uri.description)
    }
}
