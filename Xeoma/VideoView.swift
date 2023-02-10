//
//  VideoView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI

struct VideoView: View {
    var camera: Camera
    var body: some View {
        VStack {
            // тут будет большое видео и его форматирование
            Text(camera.name)
                .font(.title2)
            Text(camera.asset)
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
        VideoView(camera: Camera(name: "Cam1", asset: "example1"))
    }
}
