import Vapor
import Leaf
import VaporHelpers

public struct WebServer {
    public init() {}

    public func configure(_ app: Application) {
        //TODO

        app.httpPort = 1500

        app.views.use(.leaf)

        app.get("hello", use: hello)
    }

    private func hello(request: Request) async throws -> View {
        return try await request.view.render("hello", ["name": "Leaf"])
    }
}