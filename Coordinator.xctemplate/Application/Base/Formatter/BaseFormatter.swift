import UIKit

protocol FormatterProtocol: AnyObject {
    
    var pattern: String? { get }
    
    var prefix: String? { get }
    
    func format(
        text: String
    ) -> String
    
    func replaceString(
        textField: UITextField,
        in range: NSRange,
        with string: String
    ) -> String?
    
}

class BaseFormatter: NSObject, FormatterProtocol {
    
    // MARK: - Initialization
    
    override init() {
        super.init()
    }
    
    // MARK: - FormatterProtocol
    
    var pattern: String? { return nil }
    
    var prefix: String? { return nil }
    
    func format(
        text: String
    ) -> String {
        return text
    }
    
    func replaceString(
        textField: UITextField,
        in range: NSRange,
        with string: String
    ) -> String? {
        return (textField.text as NSString?)?.replacingCharacters(in: range, with: string)
    }
    
}

// MARK: - Helpers

extension BaseFormatter {

    internal func isSafetyPrefix(
        in text: String
    ) -> Bool {
        guard let prefix = self.prefix else { return true }
        return text.contains(prefix)
    }
    
    internal func getSafetyPrefix() -> String {
        return self.prefix ?? Separator.clear
    }
    
}
