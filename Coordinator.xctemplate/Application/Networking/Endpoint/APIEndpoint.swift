import Foundation

enum HTTPMethod:String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

typealias HTTPHeaders = [String: String]

typealias Parameters = [String: Any]


protocol APIEndpoint {
    
    associatedtype ResponseType

    var baseURLString: String { get }
    
    var path: String { get }

    var method: HTTPMethod { get }
            
    var parameters: Parameters? { get }

    var headers: HTTPHeaders { get }
        
}

extension APIEndpoint {
    
    var host:String {
        baseURLString + path
    }
}

extension APIEndpoint {
    
    var baseURLString: String {
        return ""
    }

}
 
