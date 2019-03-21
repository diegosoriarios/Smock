import FluentSQLite
import Codability
import Vapor

final class MockResponse: SQLiteModel {
    var id: Int?
    var route: String
    var method: String
    var payload: AnyCodable
    var code: Int
    var headers: Dictionary<String, String>?
    
    init(id: Int? = nil, route: String, method: Method, payload: AnyCodable, code: Int, headers: Dictionary<String, String>? = [:]){
        self.id = id
        self.route = route
        self.method = method.rawValue
        self.payload = payload
        self.code = code
        self.headers = headers
    }
}

extension MockResponse: Migration {}
extension MockResponse: Content {}
extension MockResponse: Parameter {}

enum Method: String {
    case GET
    case POST
    case PUT
    case DELETE
    case PATCH
}
