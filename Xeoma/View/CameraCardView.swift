//
//  CameraCardView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 10.02.2023.
//

import SwiftUI


struct CameraCardView: View {
    var camera: Camera
    
    var body: some View {
        VStack {
            VStack {
                // Переделать потом на превью видео, а не картинки
                
                Image(camera.adress)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
    //                .padding(.top, 10)
    //                .padding(.leading, 10)
                    .background(Color.gray.opacity(0.1))
                
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(camera.name)
                            .font(.title3)
                        Text(camera.adress)
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                }
                .padding()
            
                
            }
            .background(Color.white)
            .cornerRadius(15)
            
            Spacer()
        }
    }
}

struct CameraCardView_Previews: PreviewProvider {
    static var previews: some View {
        CameraCardView(camera: Camera(name: "cam1", adress: "example1"))
    }
}
