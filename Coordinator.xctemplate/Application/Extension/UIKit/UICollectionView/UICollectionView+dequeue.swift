import UIKit

extension UICollectionView {
    
    func dequeueReusableCell<View: UICollectionViewCell>(withType type: View.Type, for indexPath: IndexPath) -> View {
        let indetifier = String(describing: type)
        let cell = self.dequeueReusableCell(withReuseIdentifier: indetifier, for: indexPath) as! View
        return cell
    }
    
    func register<View: UICollectionViewCell>(nibType: View.Type) {
        let identifier = String(describing: nibType)
        let bundle = Bundle(for: nibType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
    
    //MARK: - Header
    
    func registerHeader<View: UICollectionReusableView>(nibType: View.Type) {
        let identifier = String(describing: nibType)
        let bundle = Bundle(for: nibType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                      withReuseIdentifier: identifier)
    }
    
    func dequeueReusableHeader<View: UICollectionReusableView>(withType type: View.Type, for indexPath: IndexPath) -> View {
        let indetifier = String(describing: type)
        let header = self.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                           withReuseIdentifier: indetifier,
                                                           for: indexPath) as! View
        return header
    }
    
    //MARK: - Footer
    func registerFooter<View: UICollectionReusableView>(nibType: View.Type) {
        let identifier = String(describing: nibType)
        let bundle = Bundle(for: nibType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                      withReuseIdentifier: identifier)
    }
    
    func dequeueReusableFooter<View: UICollectionReusableView>(withType type: View.Type, for indexPath: IndexPath) -> View {
        let indetifier = String(describing: type)
        let header = self.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
                                                           withReuseIdentifier: indetifier,
                                                           for: indexPath) as! View
        return header
    }
}
