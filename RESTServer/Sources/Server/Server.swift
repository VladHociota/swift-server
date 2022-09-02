import Vapor
import RESTServer

@main
public struct Server {
    public static func main() throws {
        let app = Application()
        let server = RESTServer()
        server.configure(app)
        try app.run()
    }
}
