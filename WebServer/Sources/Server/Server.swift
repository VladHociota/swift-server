import Vapor
import WebServer

@main
public struct Server {
    public static func main() throws {
        let app = Application()
        let server = WebServer()
        server.configure(app)
        try app.run()
    }
}
