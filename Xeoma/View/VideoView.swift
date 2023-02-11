//
//  VideoView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var camera: Camera
    @State private var player = AVPlayer()
    
    var body: some View {
        ZStack{
            VideoPlayer(player: player)
                .ignoresSafeArea(.all)
                .onAppear {
                    let item = AVPlayerItem(url: Bundle.main.url(forResource: camera.adress, withExtension: "mov")!)
                    player.replaceCurrentItem(with: item)
                    player.play()
                }
            VStack(alignment: .leading) {
                Spacer()
                Text("Camera: \(camera.name). Adress: \(camera.adress)")
                    .bold()
                    .foregroundColor(.white)
                //                    .shadow(radius: 35)
                    .shadow(color: .black, radius: 5)
                //                    .padding(.leading, 40)
            }
        }
        .navigationTitle(camera.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {}, label: {
            Image(systemName: "slider.horizontal.3")
                .renderingMode(.template)
                .foregroundColor(.gray)
        }))
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(camera: Camera(name: "Cam1", adress: "example1"))
    }
}
