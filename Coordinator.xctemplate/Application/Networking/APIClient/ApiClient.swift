
import Combine
import Foundation

class ApiClient {
    
    private let requestBuilder: RequestBuilder
    
    private lazy var decoder: JSONDecoder = {
        JSONDecoder()
    }()
    
    init(
        requestBuilder: RequestBuilder
    ) {
        self.requestBuilder = requestBuilder
    }
    
    func performRequest<Endpoint: APIEndpoint>(_ endpoint: Endpoint,
                                               completion: @escaping (Endpoint.ResponseType?, Error?) -> Void) where Endpoint.ResponseType: Codable {
        
        guard let request = self.requestBuilder.build(endpoint: endpoint) else {
            completion(nil, APIError.unauthorized)
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            do {
                let responseValidator = APIResponseValidator(response: response as? HTTPURLResponse)
                
                if case .failure(let error) = responseValidator  {
                    throw error
                }
                guard let data = data else {
                    throw APIError.baseRequest
                }
                
                let results = try JSONDecoder().decode(Endpoint.ResponseType.self, from: data)
                
                DispatchQueue.main.async {
                    completion(results, nil)
                }
            } catch let error {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
            }
        }
    
        task.resume()
    }
    
}
