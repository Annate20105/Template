import Foundation

protocol ObjectSavable {
    func setObject<Object>(_ object: Object, forKey: String) throws where Object: Encodable
    func getObject<Object>(forKey: String, castTo type: Object.Type) throws -> Object? where Object: Decodable
}


extension UserDefaults: ObjectSavable {
    func setObject<Object>(_ object: Object, forKey: String) throws where Object: Encodable {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .useDefaultKeys
        do {
            let data = try encoder.encode(object)
            set(data, forKey: forKey)
        } catch {
            print(error)
        }
    }
    
    func getObject<Object>(forKey: String, castTo type: Object.Type) throws -> Object? where Object: Decodable {
        guard let data = data(forKey: forKey) else { return nil }
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .useDefaultKeys

        do {
            let object = try decoder.decode(type, from: data)
            return object
        } catch {
            return nil
        }
    }
}
