import Foundation
import Combine

protocol SplashProvider {
    
    var state: CurrentValueSubject<SplashProviderState, Never>{ get }

}


class SplashProviderImpl: SplashProvider {
    
    //MARK: - Private
        
    private var subscriptions = Set<AnyCancellable>()
    
    //MARK: - Init
    
    init() {
    }
    
    //MARK: - SplashProvider
    
    let state = CurrentValueSubject<SplashProviderState, Never>(SplashProviderState.initial)

    
}

struct SplashProviderState {

    static let initial = SplashProviderState()
   
}
