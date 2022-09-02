import Vapor

@main
public struct Server {
    public static func main() {
        let server = Application()
        server.start()
    }
}
