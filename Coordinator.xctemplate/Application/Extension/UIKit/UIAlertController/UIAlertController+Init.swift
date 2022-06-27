import UIKit

extension UIAlertController {
    
    private convenience init(inputData: UIAlertControllerCommonInputData, preferredStyle:Style) {
        self.init(title: inputData.title, message: inputData.message, preferredStyle: preferredStyle)
        inputData.buttons
            .map { button in UIAlertAction(title: button.title, style: button.style, handler: { _ in button.action?() }) }
            .forEach { self.addAction($0) }
    }
    
    static func makeAlertController(inputData: UIAlertControllerCommonInputData) -> UIAlertController{
        return UIAlertController(inputData: inputData, preferredStyle: .alert)
    }
    
    static func makeActionSheetController(inputData: UIAlertControllerCommonInputData) -> UIAlertController{
        return UIAlertController(inputData: inputData, preferredStyle: .actionSheet)
    }
    
}
