
import Foundation

class BaseEndpoint {
            
    var method: HTTPMethod {
        return .post
    }
    
    var path: String {
        return ""
    }
        
    var parameters: Parameters? {
        return [:]
    }
    
    var headers: HTTPHeaders {
        return [
            APIHeaders.contentType.rawValue: APIContentType.applicationJSON.rawValue
        ]
    }

}
