//
//  ContentView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 08.02.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if vm.authenticated {
            // Main View
            NavigationView {
                CustomTabView()
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(true)
                    .onAppear{
                        print(vm.authenticated)
                    }
            }
        } else {
            // Login View
            ZStack{
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .ignoresSafeArea()
                    .foregroundStyle(.linearGradient(colors: [Color(red: 247/255, green: 250/255, blue: 250/255), .white], startPoint: .bottom, endPoint: .top))
                
                VStack {
                    VStack {
                        Spacer()
                        Image("Xeoma")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding()
                        TextField("Username", text: $vm.username)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                            .padding()
                        SecureField("Password", text: $vm.password)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .textInputAutocapitalization(.never)
                            .privacySensitive()
                        Button("Log in", action: vm.authenticate)
                        Spacer()
                        Spacer()
                        Spacer()
                        Button("Guest Access") {
                            openURL(URL(string: "https://felenasoft.com/xeoma/en/#request_demo")!)
                        }
                        .padding(5)
                        
                        Text("Copyright © 2004-2023 Felenasoft")
                            .foregroundColor(.gray)
                            .font(.system(size: 13, weight: .light, design: .rounded))
                            .frame(alignment: .center)
//                            .ignoresSafeArea(.keyboard)
                        
                    }
                    .frame(width: 300)
                    .alert("Username or Pasword is incorrect", isPresented: $vm.invalid) {
                        Button("Ok", role: .cancel) {
                        }
                        
                    }
                }
                .frame(width: 400)
                .ignoresSafeArea(.keyboard)
                //            .foregroundStyle(.linearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom))
                //            .background(Color.gray)
                //            .ignoresSafeArea()
                .transition(.slide)
                // переход между View
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


