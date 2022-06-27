import UIKit

extension UIScrollView {
    
    func scrollToPage(page: Int, animated: Bool = true) {
        var frame: CGRect = self.frame
        frame.origin.x = frame.size.width * CGFloat(page)
        frame.origin.y = 0
        self.scrollRectToVisible(frame, animated: animated)
    }
    
    var currentPage:Int{
        return Int((self.contentOffset.x+(0.5*self.frame.size.width))/self.frame.width);
    }
}
