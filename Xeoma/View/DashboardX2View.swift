//
//  DashboardX2View.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI
import AVKit

struct DashboardX2View: View {
    @State private var player = AVPlayer()
    @State var cameras: [Camera] =  []
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 340), spacing: 1)]
    
    var testArray = ["One", "Two", "Three", "Four"]
    
    var body: some View {

        VStack {
//                LazyVGrid(columns: adaptiveColumns, spacing: 1) {
//                    ForEach(testArray, id: \.self) { item in
//                        ZStack {
//                            //emptyView
//                            Rectangle()
//                                .frame(minWidth: 220, minHeight: 170)
//                                .foregroundColor(.gray)
//                            Image(systemName: "plus")
//                                .foregroundColor(.white)
//                        }
                        
                        Group {
                           
                            if let cameras = DataManager().loadCamerasFromUserDefaults()  {
                                
                                LazyVGrid(columns: adaptiveColumns, spacing: 1) {
                                    ForEach(cameras, id: \.self) { camera in
                                        NavigationLink {
                                            VideoView(camera: camera)
                                        } label: {
                                           
                                                let player = AVPlayer()
                                                VideoPlayer(player: player)
                                                //                                    .scaledToFit()
//                                                    .ignoresSafeArea(.all)
                                                    .onAppear{
                                                        let item = AVPlayerItem(url: Bundle.main.url(forResource: camera.adress, withExtension: "mov")!)
                                                        player.replaceCurrentItem(with: item)
                                                        player.play()
                                                    }
                                                    .frame(minWidth: 220, minHeight: 170)
                                                //                                    .frame(maxHeight: 240)
                                                //                                    .frame(maxWidth: .infinity)
                                                
                                            
                                        }
                                    }
                                }
//                            }
//                        }
//                        
//                        Group {
//                            if let cameras = DataManager().loadCamerasFromUserDefaults() {
//
//                                if cameras.isEmpty {
//                                    // grid with emptyViews
//                                } else {
//                                    LazyVGrid(columns: adaptiveColumns, spacing: 1) {
//                                        ForEach(cameras, id: \.id) { camera in
//                                            NavigationLink {
//                                                VideoView(camera: camera)
//                                            } label: {
//                                                ZStack {
//                                                    let player = AVPlayer()
//                                                    VideoPlayer(player: player)
//                                                    //                                    .scaledToFit()
//                                                        .ignoresSafeArea(.all)
//                                                        .onAppear{
//                                                            let item = AVPlayerItem(url: Bundle.main.url(forResource: camera.adress, withExtension: "mov")!)
//                                                            player.replaceCurrentItem(with: item)
//                                                            player.play()
//                                                        }
//                                                    //                                    .frame(maxHeight: 240)
//                                                    //                                    .frame(maxWidth: .infinity)
//                                                    VStack {
//                                                        Spacer()
//                                                        Text("Camera: \(camera.name)")
//                                                            .bold()
//                                                            .foregroundColor(.white)
//                                                            .shadow(color: .black, radius: 5)
//                                                            .padding(.leading, 10)
//                                                    }
//                                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                                }
//                                                .frame(height: 217)
//                                            }
//                                        }
//                                    }
//                                    .padding()
//                                }
//                            }
//                        }
                        
                    }
                }
                .navigationTitle("4 Cam Dashboard")
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarItems(trailing: Button(action: {print(cameras)}, label: {
            Image(systemName: "slider.horizontal.3")
                .renderingMode(.template)
                .foregroundColor(.gray)
        }))
    }
}

struct Dashboard2x2View_Previews: PreviewProvider {
    static var previews: some View {
        DashboardX2View()
    }
}
//        ZStack{
//            VideoPlayer(player: player)
//                .ignoresSafeArea(.all)
//                .onAppear {
//                    let item = AVPlayerItem(url: Bundle.main.url(forResource: camera.adress, withExtension: "mov")!)
//                    player.replaceCurrentItem(with: item)
//                    player.play()
//                }
//            VStack(alignment: .leading) {
//                Spacer()
//                Text("Camera: \(camera.name). Adress: \(camera.adress)")
//                    .bold()
//                    .foregroundColor(.white)
//                //                    .shadow(radius: 35)
//                    .shadow(color: .black, radius: 5)
//                //                    .padding(.leading, 40)
//            }
//        }
//        .navigationTitle(camera.name)
//        .navigationBarTitleDisplayMode(.inline)
