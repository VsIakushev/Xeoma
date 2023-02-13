//
//  SettingsView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("AUTH_KEY") var authenticated = false
    @State var isLogged: Bool = true
    
    var body: some View {
        VStack {
            Text("SettingsView")
                .bold()
                .padding()
            Text("Настройки: цвет темы, светлая, темная, авто, logOut, etc. ")
            // Добавить хранение isLogedIn в UserDefaults
//            Text("Welcome back **\(vm.username.lowercased())**!")
            Button("Log out", action: logOut)
                .buttonStyle(.bordered)
            
        }
    }
    func toggleAuthentication() {
//        password = ""
        withAnimation {
            authenticated.toggle()
            isLogged = false
        }
    }
    
    func logOut() {
        toggleAuthentication()
//        withAnimation {
//            authenticated = false
////            authenticated.toggle()
//        }
        print(authenticated)
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

//// For closing keyboard by Tap outside of textfield
//extension UIApplication {
//    func addTapGestureRecognizer() {
//        guard let window = windows.first else { return }
//        let tapGesture = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
//        tapGesture.requiresExclusiveTouchType = false
//        tapGesture.cancelsTouchesInView = false
//        tapGesture.delegate = self
//        window.addGestureRecognizer(tapGesture)
//    }
//}
//
//// For closing keyboard by Tap outside of textfield
//extension UIApplication: UIGestureRecognizerDelegate {
//    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        return true // set to `false` if you don't want to detect tap during other gestures
//    }
//}
