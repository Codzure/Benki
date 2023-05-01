//
//  ViewController.swift
//  Benki
//
//  Created by Leonard Mutugi on 12/12/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    let signInButton = UIButton(type: .system)
    let errorMessageLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }

}

extension LoginViewController {
   private func style() {
       loginView.translatesAutoresizingMaskIntoConstraints = false
       
       signInButton.translatesAutoresizingMaskIntoConstraints = false
       signInButton.configuration = .filled()
       signInButton.configuration?.imagePadding = 8
       signInButton.setTitle("Sign In", for: [])
       signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
       
       errorMessageLabel.translatesAutoresizingMaskIntoConstraints = false
       errorMessageLabel.textAlignment = .center
       errorMessageLabel.textColor = .systemRed
       errorMessageLabel.numberOfLines = 0
       errorMessageLabel.text = "Error failure"
       errorMessageLabel.isHidden = false
    }
    
    private func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorMessageLabel)
        
        // LoginView
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
        ])
        
        // Button
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 1),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ])
        
        // ErrorLabel
        NSLayoutConstraint.activate([
            errorMessageLabel.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorMessageLabel.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            errorMessageLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ])
    }
}

extension LoginViewController {
    @objc func signInTapped(sender: UIButton){
        
    }
}

