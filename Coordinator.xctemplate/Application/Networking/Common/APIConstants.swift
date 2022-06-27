
import Foundation

class APIConstants: NSObject {
    static let reachabilityManagerHost = "google.com"
}

enum APIContentType: String {
    case applicationJSON = "application/json"
    case applicationPDF = "application/pdf"
    case applicationFormURLEncoded = "application/x-www-form-urlencoded"
}

enum APISecurityScheme: String {
    case bearer = "Bearer"
    case basic  = "Basic"
}

enum APIHeaders: String {
    case contentType    = "Content-Type"
    case authorization  = "Authorization"
}

enum APIParameterName: String {
    case id
}

enum APIPath:String {
    case example = ""
}


enum APIRequestType {
    case none

}
