import UIKit

extension UITableView {

    // MARK: - Cell
    
    func dequeueReusableCell<View: UITableViewCell>(withType type: View.Type, for indexPath: IndexPath) -> View {
        let indetifier = String(describing: type)
        let cell = self.dequeueReusableCell(withIdentifier: indetifier, for: indexPath) as! View
        return cell
    }
    
    func registerCell<View: UITableViewCell>(nibType: View.Type) {
        let identifier = String(describing: nibType)
        let bundle = Bundle(for: nibType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib, forCellReuseIdentifier: identifier)
    }
    
    // MARK: - Header
    
    func dequeueReusableHeader<View: UITableViewHeaderFooterView>(withType type: View.Type) -> View? {
        let indetifier = String(describing: type)
        let header = self.dequeueReusableHeaderFooterView(withIdentifier: indetifier) as? View
        return header
    }
    
    func registerHeader<View: UITableViewHeaderFooterView>(nibType: View.Type) {
        let identifier = String(describing: nibType)
        let bundle = Bundle(for: nibType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
    // MARK: - Footer
    
    func dequeueReusableFooter<View: UITableViewHeaderFooterView>(withType type: View.Type) -> View? {
        let indetifier = String(describing: type)
        let footer = self.dequeueReusableHeaderFooterView(withIdentifier: indetifier) as? View
        return footer
    }
    
    func registerFooter<View: UITableViewHeaderFooterView>(nibType: View.Type) {
        let identifier = String(describing: nibType)
        let bundle = Bundle(for: nibType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
}
