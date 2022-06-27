
import UIKit

class SplashScreenVC<View: BaseScreenView>: BaseViewController<View> {
    //MARK: - Closure

    open var onFinishShowScreen: VoidClosure?
    
    
    // MARK: - Private
    
    private var provider: SplashProvider
    
    //MARK: - Initialization
    
    init(provider: SplashProvider) {
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
        self.combineInstallation()
    }
}

//MARK: - Combine
private extension SplashScreenVC {
    
    private func combineInstallation() {
        provider.state.sink {[weak self] state in
        }.store(in: &subscriptions)
    }
}
