//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by apple on 19.07.2023.
//

import Foundation

final class HomeViewModel {
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworcService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
