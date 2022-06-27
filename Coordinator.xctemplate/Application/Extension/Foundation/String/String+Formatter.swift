import UIKit

extension String {

    var floatValue: Float {
        return (self as NSString).floatValue
    }

    var integerValue: Int {
        return (self as NSString).integerValue
    }

    var boolValue: Bool {
        return NSString(string: self).boolValue
    }
    
    //TODO:...
}

