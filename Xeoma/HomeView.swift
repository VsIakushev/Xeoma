//
//  Home.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 10.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State var txt = ""
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var cameras = [
        Camera(name: "Cam1", asset: "example1"),
        Camera(name: "Cam2", asset: "example2"),
        Camera(name: "Cam3", asset: "example3"),
        Camera(name: "Cam4", asset: "example4")
        
    ]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Hello Carlos")
                        .font(.title)
                        .bold()
                    Text("Let's watch your cameras")
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 35, height: 35)
                }
                
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search camera", text: $txt)
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    HStack {
                        Text("My Cameras")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("View All")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
                    
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                        ForEach(cameras) { camera in
                            NavigationLink(destination: VideoView(camera: camera)) {
                                CameraCardView(camera: camera)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
//                .padding(.bottom, edge!.bottom + 70)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
