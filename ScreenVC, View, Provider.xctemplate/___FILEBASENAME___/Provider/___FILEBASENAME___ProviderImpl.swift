import Foundation
import Combine

protocol ___VARIABLE_productName___Provider {
	var state: CurrentValueSubject<___FILEBASENAME___State, Never> { get }

}

class ___VARIABLE_productName___ProviderImpl: ___VARIABLE_productName___Provider {

    private var subscriptions = Set<AnyCancellable>()


    //MARK: - ___VARIABLE_productName___Provider
    let state = CurrentValueSubject<___VARIABLE_productName___State, Never>(___VARIABLE_productName___State.initial)


}

struct ___VARIABLE_productName___State {

    static let initial = ___VARIABLE_productName___State()


}