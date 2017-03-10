import HTTP
import URI

public struct EnforceHerokuPiggybackSSL: Middleware {
    public func respond(to request: Request, chainingTo next: Responder) throws -> Response {
        if request.headers["X-Forwarded-Proto"] == "https" {
            return try next.respond(to: request)
        }
        let uri = URI(
            scheme: "https",
            userInfo: request.uri.userInfo,
			port: request.uri.port,
			path: request.pathWithoutTrailingSlash,
			query: request.uri.query,
			rawQuery: request.uri.rawQuery,
			fragment: request.uri.fragment
        )
        return Response(redirect: uri.description)
    }
}
