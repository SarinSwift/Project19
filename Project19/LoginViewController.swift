//
//  LoginViewController.swift
//  Project19
//
//  Created by Sarin Swift on 11/15/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setupButton()
        
        continueButton.addTarget(self, action: #selector(self.continueButtonClicked(_:)), for: .touchUpInside)
    }
    
    @objc func continueButtonClicked(_ sender: UIButton) {
        let vc = ViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    func setupButton() {
        continueButton = UIButton()
        continueButton.backgroundColor = #colorLiteral(red: 0.460822463, green: 0.8675957918, blue: 0.8359516263, alpha: 1)
        continueButton.setTitle("Continue", for: .normal)
        continueButton.layer.cornerRadius = 5
        self.view.addSubview(continueButton)
        
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        continueButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        continueButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
}
