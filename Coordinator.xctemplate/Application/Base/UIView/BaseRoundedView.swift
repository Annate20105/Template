
import UIKit

class BaseRoundedView: UIView, RoundedProtocol {

    @IBInspectable var cornerRadius: CGFloat = 15.0 {
        didSet {
            self.layoutSubviews()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layoutSubviews()
        }
    }
    
    @IBInspectable var borderColor: UIColor? = UIColor.clear {
        didSet {
            self.layoutSubviews()
        }
    }

    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.applyRounding(cornerRadius: self.cornerRadius,
                           borderWidth: self.borderWidth,
                           borderColor: self.borderColor)
    }
    
}
