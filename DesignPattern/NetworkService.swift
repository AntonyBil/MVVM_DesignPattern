//
//  NetworkService.swift
//  DesignPattern
//
//  Created by apple on 19.07.2023.
//

import Foundation


final class NetworcService {
    
    static let shared = NetworcService()
    private init() {}
    
   private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "test@test.com" && password == "password" {
                self?.user = User(firstName: "Antony", LastName: "Biletskiy", email: "test@test.com", age: 35)
                completion(true)
            } else {
                self?.user = nil
                completion(false)
            }
        }
    }
    
    func getLoggedInUser() -> User {
        return user!
    }
    
}
