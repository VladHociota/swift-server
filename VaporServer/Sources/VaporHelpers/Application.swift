import Vapor

extension Application {
    public var httpPort: Int {
        get { return http.server.configuration.port }
        set { http.server.configuration.port = newValue }
    }
}
