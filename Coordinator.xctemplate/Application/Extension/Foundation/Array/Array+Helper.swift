import UIKit

extension Array where Element: Equatable {
    
    subscript (safe index: Int) -> Element? {
        return (0..<count).contains(index) ? self[index] : nil
    }
    
}


//MARK: - Unique Elemets
extension Array where Element:Equatable {
    
    func uniqueElemets() -> [Element] {
        var result = [Element]()
        
        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }
        
        return result
    }
    
    mutating func addUniqueElement(object: Element?) {
        guard let element = object else {
            return
        }
        if !self.contains(element) {
            self.append(element)
        }
    }
    
    mutating func addUniqueElements(objects: [Element]?) {
        guard let elements = objects else {
            return
        }
        elements.forEach({
            self.addUniqueElement(object: $0)
        })
    }
}

//MARK: - Remove

extension Array where Element: Equatable {
    
    mutating func removeObject(_ object: Element) {
        if let index = self.firstIndex(of: object) {
            self.remove(at: index)
        }
    }
    
    mutating func removeObjectsInArray(_ array: [Element]) {
        for object in array {
            self.removeObject(object)
        }
    }
}

//MARK: - For Each

extension Array {
    
    mutating func mutateEach(by transform: (inout Element) throws -> Void) rethrows {
        self = try map { el in
            var el = el
            try transform(&el)
            return el
        }
    }
    
}
