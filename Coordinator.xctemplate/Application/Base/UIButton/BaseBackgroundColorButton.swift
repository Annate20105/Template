import UIKit

class BaseBackgroundColorButton: BaseRoundedButton {

    @IBInspectable var selectedBackgroundColor:UIColor? {
        didSet {
            self.updatedBackgroundColor()
        }
    }
    
    @IBInspectable var normalBackgroundColor:UIColor? {
        didSet {
            self.updatedBackgroundColor()
        }
    }
    
    @IBInspectable var disableBackgroundColor:UIColor? {
        didSet {
            self.updatedBackgroundColor()
        }
    }
    
    
    @IBInspectable var highlightedBackgroundColor:UIColor? {
        didSet {
            self.updatedBackgroundColor()
        }
    }

    override var isSelected: Bool {
        didSet {
            self.updatedBackgroundColor()
        }
    }
    
    override var isEnabled: Bool {
        didSet {
            self.updatedBackgroundColor()
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if self.isHighlighted {
                self.backgroundColor = self.highlightedBackgroundColor
            } else {
                self.updatedBackgroundColor()
            }
        }
    }
}

private extension BaseBackgroundColorButton {
    
    func updatedBackgroundColor() {
        if isSelected {
            self.backgroundColor = self.selectedBackgroundColor
        } else if isEnabled {
            self.backgroundColor = self.normalBackgroundColor
        } else {
            self.backgroundColor = self.disableBackgroundColor
        }
    }
}
