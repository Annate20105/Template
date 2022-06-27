
import UIKit


protocol CoordinatorFactory:AnyObject {
    
    func makeAppCoordinator(router: Router) -> AppCoordinator
    
    func makeSplashCoordinator(router: Router) -> SplashCoordinator
}


final class CoordinatorFactoryImpl: CoordinatorFactory {
    
    private let screenFactory:ScreenFactory!
    
    init(screenFactory:ScreenFactory) {
        self.screenFactory = screenFactory
    }
    
    func makeAppCoordinator(router: Router) -> AppCoordinator {
        AppCoordinator(router: router, coordinatorFactory: self)
    }
    
    //MARK: - Splash
    func makeSplashCoordinator(router: Router) -> SplashCoordinator {
        SplashCoordinator(router: router, screenFactory: self.screenFactory)
    }
}
