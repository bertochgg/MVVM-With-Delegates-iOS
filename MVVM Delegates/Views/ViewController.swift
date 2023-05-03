//
//  ViewController.swift
//  MVVM Delegates
//
//  Created by Humberto Garcia on 02/05/23.
//

import UIKit

class ViewController: UIViewController, ViewModelDelegate {
    let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 260, height: 60))
        button.setTitle("Push", for: .normal)
        button.backgroundColor = .systemPink
        
        return button
    }()
    
    var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(doSomething), for: .touchUpInside)
        button.center = view.center
        
        viewModel = ViewModel()
        viewModel.delegate = self
    }
    
    func viewModelDidUpdate(_ viewModel: ViewModel) {
        // Update the view with any changes from the view model
    }
    
    @objc
    func doSomething() {
        viewModel.buttonTapped()
        self.button.setTitle(viewModel.buttonTitle, for: .normal)
    }
    
}
