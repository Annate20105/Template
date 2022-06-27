import UIKit

struct UIAlertControllerCommonInputData {
    
    let title: String?
    let message: String?
    let buttons: [Button]
    
    init(
        title: String? = nil,
        message: String? = nil,
        buttons: [UIAlertControllerCommonInputData.Button]
    ) {
        self.title = title
        self.message = message
        self.buttons = buttons
    }
}


extension UIAlertControllerCommonInputData {
    
    struct Button {
        let title: String
        let style : UIAlertAction.Style
        let action: VoidClosure?
        init(
            title: String,
            style: UIAlertAction.Style = .default,
            action: VoidClosure? = nil
        ) {
            self.title = title
            self.action = action
            self.style = style
        }

    }
    
}
