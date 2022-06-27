import UIKit

public extension UIStackView {
    
    func removeArrangedViews() {
        for view in self.arrangedSubviews {
            view.removeFromSuperview()
        }
    }
    
}
