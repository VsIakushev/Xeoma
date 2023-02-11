//
//  Content-ViewModel.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//


import Foundation
import SwiftUI

extension ContentView {
    class ViewModel: ObservableObject {
        @AppStorage("AUTH_KEY") var authenticated = false {
            willSet { objectWillChange.send() }
        }
        @AppStorage("USER_KEY") var username = "username" //later make ""
        @Published var password = "" //later make ""
        @Published var invalid: Bool = false
        
        private var sampleUser = "username"
        private var samplePassword = "password"
        
        init() {
            print("Currently logged on: \(authenticated)")
            print("Current user: \(username)")
        }
        
        func toggleAuthentication() {
            self.password = ""
            withAnimation {
                authenticated.toggle()
            }
        }
        
        func authenticate() {
            guard self.username.lowercased() == sampleUser else {
                self.invalid = true
                return
            }
            guard self.password.lowercased() == samplePassword else {
                self.invalid = true
                return
            }
            self.password = ""
            toggleAuthentication()
            
        }
        
        func logOut() {
            toggleAuthentication()
        }
        
        func logPressed() {
            print("Button pressed")
        }
    }
    
}

