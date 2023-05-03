//
//  Service.swift
//  MVVM Delegates
//
//  Created by Humberto Garcia on 02/05/23.
//

import Foundation

protocol ServiceProtocol {
    func doSomething(completion: @escaping (Result<String, Error>) -> Void)
}

class Service: ServiceProtocol {
    
    func doSomething(completion: @escaping (Result<String, Error>) -> Void) {
        // Perform some operation, such as an API request
        // ...
        // Call the completion handler with the result
        completion(.success("Button pressed"))
    }
    
}
