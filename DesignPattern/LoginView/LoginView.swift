//
//  LoginView.swift
//  DesignPattern
//
//  Created by apple on 19.07.2023.
//

import Foundation

final class LoginViewModel {
    
    var error: ObservableObject<String?> = ObservableObject(nil)
    
    func login(email: String, password: String) {
        NetworcService.shared.login(email: email, password: password) { [weak self] success in
            self?.error.value = success ? nil : "Invalid Credentials!!!"
        }
    }
    
}
