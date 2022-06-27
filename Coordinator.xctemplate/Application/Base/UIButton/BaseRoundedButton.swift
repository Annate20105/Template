import UIKit
 
class BaseRoundedButton: UIButton, RoundedProtocol {

    @IBInspectable
    var cornerRadius: CGFloat = 24.0
    
    @IBInspectable
    var borderWidth: CGFloat = 0.0
    
    @IBInspectable
    dynamic var borderColor: UIColor = UIColor.clear

    override func layoutSubviews() {
        super.layoutSubviews()
        self.applyRounding(cornerRadius: self.cornerRadius,
                           borderWidth: self.borderWidth,
                           borderColor: self.borderColor)
    }

}
