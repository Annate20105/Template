
import UIKit

enum AppFontStyle {
    case light
    case regular
    case bold
    case medium
}


extension UIFont {

    static func appFont(size: CGFloat, style: AppFontStyle = .regular) -> UIFont {
        var result: UIFont? = nil
        switch style {
        case .light:        result = UIFont.systemFont(ofSize: size, weight: .light)
            break
        case .bold:         result = UIFont.systemFont(ofSize: size, weight: .bold)
            break
        case .medium:       result = UIFont.systemFont(ofSize: size, weight: .medium)
            break
        case .regular:      result = UIFont.systemFont(ofSize: size, weight: .regular)
            break
        }
        if result != nil {
            return result!
        }
        
        return UIFont.systemFont(ofSize: size)
    }

}

