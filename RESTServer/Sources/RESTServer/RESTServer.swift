import Vapor
import VaporHelpers

public struct RESTServer {
    public init() {}

    public func configure(_ app: Application) {
        //TODO
        app.httpPort = 1500

        app.get("data", use: getData)
    }

    private func getData(request: Request) async throws -> String {
        return "Hello from Swift Server"
    }

    private func postData(request: Request) async throws -> String {
        return "Hello from Swift Server"
    }

    private func putData(request: Request) async throws -> String {
        return "Hello from Swift Server"
    }

    private func patchData(request: Request) async throws -> String {
        return "Hello from Swift Server"
    }

    private func deleteData(request: Request) async throws -> String {
        return "Hello from Swift Server"
    }
}
