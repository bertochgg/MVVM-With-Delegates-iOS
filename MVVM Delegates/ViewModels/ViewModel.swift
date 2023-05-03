//
//  ViewModel.swift
//  MVVM Delegates
//
//  Created by Humberto Garcia on 02/05/23.
//

import Foundation

protocol ViewModelDelegate: AnyObject {
    func viewModelDidUpdate(_ viewModel: ViewModel)
}

class ViewModel {
    
    weak var delegate: ViewModelDelegate?
    let service: Service
    var buttonTitle: String = "Press Me"
    
    init(service: Service = Service()) {
        self.service = service
    }
    
    func buttonTapped() {
        print("hi")
        service.doSomething { result in
            switch result {
            case .success(let message):
                print(message)
                self.buttonTitle = message
                self.delegate?.viewModelDidUpdate(self)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}

