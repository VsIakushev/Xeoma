//
//  DashboardX3View.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 12.02.2023.
//


import SwiftUI
import AVKit

struct DashboardX3View: View {
    @State private var player = AVPlayer()
    @State var cameras: [Camera] =  []
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 200), spacing: 1)]
    
//    var testArray = ["One", "Two", "Three", "Four"]
    
    var body: some View {

        VStack {
                        
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

struct DashboardX3View_Previews: PreviewProvider {
    static var previews: some View {
        DashboardX3View()
    }
}
