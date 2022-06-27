
import UIKit

class BaseView: UIView, CommonInitable {

    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    //MARK: - CommonInitable
    
    func commonInit() {
        self.fromNib()
    }

}
