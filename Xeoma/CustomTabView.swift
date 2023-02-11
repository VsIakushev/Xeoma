//
//  CustomTabView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 10.02.2023.
//

import SwiftUI

struct CustomTabView: View {
    @State var selectedTab = "web.camera"
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            // для переключения страниц боковым свайпом
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag("web.camera")
                DashboardView()
                    .tag("tablecells")
                Features()
                    .tag("clock")
                
                SettingsView()
                    .tag("gearshape.fill")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: .bottom)
            
            HStack(spacing: 0) {
                ForEach(tabs, id: \.self) { image in
                    TabButton(image: image, selectedTab: $selectedTab)
                    
                    if image != tabs.last {
                        Spacer()
                    }
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 5)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: .black.opacity(0.15), radius: 5, x: 5, y: 5)
            .shadow(color: .black.opacity(0.15), radius: 5, x: -5, y: -5)
            .padding(.horizontal)
            //чтобы вью могло заходить ниже табБара при скролле
//            .padding(.bottom, edge!.bottom == 0 ? 20 : 0)
            
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}

var tabs = ["web.camera", "tablecells", "clock", "gearshape.fill"]

struct TabButton: View {
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(systemName: image)
//                .resizable()
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color(.systemBlue) : .black.opacity(0.4))
                .frame(width: 20, height: 23)
                .padding()
        }
    }
}


struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
