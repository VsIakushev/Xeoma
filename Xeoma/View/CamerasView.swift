//
//  CamerasView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 10.02.2023.
//

import SwiftUI
import AVKit

struct CamerasView: View {
    @State private var isAddingItem = false
    @State private var itemToAdd = Camera(name: "", adress: "")
    @State var searchText = ""
    
    var cameras = [
        Camera(name: "Cam1", adress: "example1"),
        Camera(name: "Cam2", adress: "example2"),
        Camera(name: "Cam3", adress: "example3"),
        Camera(name: "Cam4", adress: "example4")
        
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
                        TextField("Search camera", text: $searchText)
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
            }
        }
    }
    
}

struct CamerasView_Previews: PreviewProvider {
    static var previews: some View {
        CamerasView()
    }
}
