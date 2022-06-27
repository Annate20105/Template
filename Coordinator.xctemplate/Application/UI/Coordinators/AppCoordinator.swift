import UIKit

final class AppCoordinator: BaseCoordinator {
    
    fileprivate var isFirst:Bool = true

    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        if self.isFirst {
            startSplashFlow()
        } else {
            
        }
    }

}


//MARK: - Flow
private extension AppCoordinator {
    
    private func startSplashFlow() {
        let coordinator = coordinatorFactory.makeSplashCoordinator(router: router)
        coordinator.finishCoordinatorFlow = { [weak self, weak coordinator] in
            self?.isFirst = false
            self?.removeDependency(coordinator)
        }
        self.addDependency(coordinator)
        coordinator.start()
    }

}
