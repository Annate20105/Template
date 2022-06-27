import UIKit

extension UIViewController {
    
    func setTitle(_ title: String?,
                  textColor: UIColor? = UIColor.black,
                  font: UIFont = UIFont.appFont(size: 14.0)) {
        self.navigationItem.title = title
        self.navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: textColor ?? UIColor.white,
            .font           : font
        ]
    }

}
