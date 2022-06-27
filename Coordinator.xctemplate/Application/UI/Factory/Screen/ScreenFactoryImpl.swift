
import UIKit



fileprivate typealias SplashProtocol = SplashScreenFactory

protocol ScreenFactory: SplashScreenFactory {

}

final class ScreenFactoryImpl: ScreenFactory {

    weak var di: DI!

    //MARK: - Splash

    func makeSplashScreen() -> SplashScreenVC<SplashScreenViewImpl> {
        return SplashScreenVC<SplashScreenViewImpl>(provider: di.splashProvider)
    }
    
    
}
