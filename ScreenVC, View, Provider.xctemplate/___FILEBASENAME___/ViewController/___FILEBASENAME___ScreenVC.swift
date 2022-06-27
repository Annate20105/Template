import UIKit

class ___FILEBASENAMEASIDENTIFIER___<View:___VARIABLE_productName___ScreenView>: BaseViewController<View> {


    // MARK: - Private
    
    private var provider: ___VARIABLE_productName___Provider
    
    //MARK: - Initialization
    
    init(provider: ___VARIABLE_productName___Provider) {
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print(String(describing: self))
    }

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
 