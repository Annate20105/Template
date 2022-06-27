import Foundation

protocol RequestBuilder {
    
    func build<Endpoint:APIEndpoint>(endpoint:Endpoint) -> URLRequest?
    
}

class RequestBuilderImpl: RequestBuilder {
    
    func build<Endpoint:APIEndpoint>(endpoint:Endpoint) -> URLRequest? {
        guard let url = URL(string: endpoint.host) else {
            return nil
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endpoint.method.rawValue
        
        // HTTP Headers
        endpoint.headers.forEach({ header in
            urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
        })
        
        if let parameters = endpoint.parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch let error {
                print(error)
            }
        }
        return urlRequest
    }
}
