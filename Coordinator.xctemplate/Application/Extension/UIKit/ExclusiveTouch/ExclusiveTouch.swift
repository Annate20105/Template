import UIKit

extension UIButton {
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.isExclusiveTouch = true
    }
}

extension UITableViewCell {
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.isExclusiveTouch = true
    }
}

extension UITableView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.isMultipleTouchEnabled = false
    }
}

