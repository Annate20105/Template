
import UIKit

class BaseNavigationController: UINavigationController {

    //MARK:- Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationBar.isTranslucent = false
//        self.interactivePopGestureRecognizer?.delegate = self
//        self.interactivePopGestureRecognizer?.isEnabled = true
    }
}

// MARK: - UIGestureRecognizerDelegate

extension BaseNavigationController: UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                           shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if (gestureRecognizer == self.interactivePopGestureRecognizer) {
            return self.viewControllers.count > 1
        } else {
            return true
        }
    }
}
