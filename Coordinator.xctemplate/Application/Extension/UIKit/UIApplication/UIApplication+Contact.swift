
import UIKit

extension UIApplication {
    
    func makeContact(with link: String) {
        guard let url = URL(string: link) else {
            return
        }
        if !self.canOpenURL(url) {
            return
        }
        self.open(url)
    }
    
    
    func makeCall(with phone: String) {
        guard let url = URL(string: "telprompt:\(phone)") else {
            return
        }
        if !self.canOpenURL(url) {
            return
        }
        self.open(url)
    }

    func openLink(with link: String) {
        guard let url = URL(string: link) else {
            return
        }
        if !self.canOpenURL(url) {
            return
        }
        self.open(url)
    }
}
