import UIKit

extension UIView {
    
    func hideAnimation(with duration:TimeInterval = 0.33, delay:TimeInterval = 3.0) {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       animations: {
                        self.alpha = 0
                       }, completion: nil)
    }

    func showAnimation(with duration:TimeInterval = 1.0, delay:TimeInterval = 0) {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       animations: {
                        self.alpha = 1
                       }, completion: nil)
    }
}

