//
//  LoginView.swift
//  Benki
//
//  Created by Leonard Mutugi on 12/12/2022.
//

import Foundation

import Foundation
import UIKit

class LoginView: UIView {
    
    let usernameTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}

extension LoginView {
    func style() {
        translatesAutoresizingMaskIntoConstraints = true
        backgroundColor = .orange
        
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Username"
        usernameTextField.delegate = self
    }
    
    func layout() {
        addSubview(usernameTextField)
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            usernameTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: usernameTextField.trailingAnchor, multiplier: 1)
        ])
        
    }
}

// MARK: - UITextFieldDelegate
//Delegates are a design pattern that allows one object to send messages to another object when a specific event happens
extension LoginView: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        return true
    }
    
    private func textFieldDidEndEditing(_ textField: UITextField) -> Bool {
        if textField.text  != ""{
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
      
    }
}
