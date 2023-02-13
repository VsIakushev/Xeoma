//
//  DashboardView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI
import AVKit

struct DashboardView: View {
    @State var cameras: [Camera] =  []
//    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 340), spacing: 1)]
                                    // для 2х2. Для 3х3 их должно влезать 3 на экран, т.е. минимум будет около 100
    // for only 2 columns
    private let numberColumns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var testArray = ["One", "Two", "Three", "Four"]
    
    var body: some View {
            VStack {
//                HStack {
//                    Spacer()
//                    NavigationLink {
//                        DashboardX2View()
//                    } label: {
//                        Text("x2")
//                            .foregroundColor(.black)
//                            .padding(.horizontal)
//                    }
//                    .buttonStyle(.bordered)
//
////                    Button(action: {}) {
////                        Text("4")
////                            .foregroundColor(.black)
////                            .padding(.horizontal)
////                    }
////                    .buttonStyle(.bordered)
//
//                    NavigationLink {
//                        DashboardX3View()
//                    } label: {
//                        Text("x3")
//                            .foregroundColor(.black)
//                            .padding(.horizontal)
//                    }
//                    .buttonStyle(.bordered)
//
//                    Spacer()
//                    Button(action: {}) {
//                        Text("9")
//                            .foregroundColor(.black)
//                            .padding(.horizontal)
//                    }
//                    .buttonStyle(.bordered)
//                    Spacer()
//                    Button(action: {}) {
//                        Text("16")
//                            .foregroundColor(.black)
//                            .padding(.horizontal)
//                    }
//                    .buttonStyle(.bordered)
//                    Spacer()
//                }
                ScrollView {
                    
                    NavigationLink(destination: DashboardX2View()) {
                        // 2x2
                        VStack(spacing: 1) {
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 120, minHeight: 80)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 120, minHeight: 80)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 120, minHeight: 80)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 120, minHeight: 80)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(maxWidth: 350)
                    .buttonStyle(.bordered)
                    .padding(5)
                    
                    // 3x3
                    NavigationLink(destination: DashboardX2View()) {
                        VStack(spacing: 1) {
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 80, minHeight: 53)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(maxWidth: 350)
                    .buttonStyle(.bordered)
                    .padding(5)
                    
                    // 4x4
                    NavigationLink(destination: {DashboardX4View()}) {
                        VStack(spacing: 1) {
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            HStack(spacing: 1) {
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(minWidth: 60, minHeight: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(maxWidth: 350)
                    .buttonStyle(.bordered)
                    .padding(5)

//                    .navigationTitle("Dashboard style")
                }
            }
        

        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

//ZStack {
//    let player = AVPlayer()
//    let playerLayer = AVPlayerLayer(player: player)
//    VideoPlayer(player: player)
//    //                                    .scaledToFit()
//        .ignoresSafeArea(.all)
//        .onAppear{
//            let item = AVPlayerItem(url: Bundle.main.url(forResource: camera.adress, withExtension: "mov")!)
//            player.replaceCurrentItem(with: item)
//            player.play()
//        }
//    //                                    .frame(maxHeight: 240)
//    //                                    .frame(maxWidth: .infinity)
//    VStack {
//        Spacer()
//        Text("Camera \((cameras.index(where: {$0 == camera }) ?? 0)+1): \(camera.name)")
//            .bold()
//            .foregroundColor(.white)
//            .shadow(color: .black, radius: 5)
//            .padding(.leading, 10)
//    }
//    .frame(maxWidth: .infinity, alignment: .leading)
//}
//.frame(height: 217)

//NavigationView {
//    VStack {
//        HStack {
//            Spacer()
//            Button(action: {}) {
//                Text("4")
//                    .foregroundColor(.black)
//                    .padding(.horizontal)
//            }
//
//            .buttonStyle(.bordered)
//            Spacer()
//            Button(action: {}) {
//                Text("9")
//                    .foregroundColor(.black)
//                    .padding(.horizontal)
//            }
//            .buttonStyle(.bordered)
//            Spacer()
//            Button(action: {}) {
//                Text("16")
//                    .foregroundColor(.black)
//                    .padding(.horizontal)
//            }
//            .buttonStyle(.bordered)
//            Spacer()
//        }
//        ScrollView{
//            LazyVGrid(columns: adaptiveColumns, spacing: 1) {
//                ForEach(testArray, id: \.self) { item in
//                    ZStack {
//                        //emptyView
//                        Rectangle()
//                            .frame(minWidth: 220, minHeight: 150)
//                            .foregroundColor(.gray)
//                        Image(systemName: "plus")
//                            .foregroundColor(.white)
//                    }
//                }
//            }
//
//                    Group {
//                        if let cameras = DataManager().loadCamerasFromUserDefaults() {
//
//                            if cameras.isEmpty {
//                                // grid with emptyViews
//                            } else {
//                                LazyVGrid(columns: columns, spacing: 20) {
//                                    ForEach(cameras, id: \.id) { camera in
//                                        NavigationLink {
//                                            VideoView(camera: camera)
//                                        } label: {
//                                            ZStack {
//                                                let player = AVPlayer()
//                                                VideoPlayer(player: player)
//                                                //                                    .scaledToFit()
//                                                    .ignoresSafeArea(.all)
//                                                    .onAppear{
//                                                        let item = AVPlayerItem(url: Bundle.main.url(forResource: camera.adress, withExtension: "mov")!)
//                                                        player.replaceCurrentItem(with: item)
//                                                        player.play()
//                                                    }
//                                                //                                    .frame(maxHeight: 240)
//                                                //                                    .frame(maxWidth: .infinity)
//                                                VStack {
//                                                    Spacer()
//                                                    Text("Camera: \(camera.name)")
//                                                        .bold()
//                                                        .foregroundColor(.white)
//                                                        .shadow(color: .black, radius: 5)
//                                                        .padding(.leading, 10)
//                                                }
//                                                .frame(maxWidth: .infinity, alignment: .leading)
//                                            }
//                                            .frame(height: 217)
//                                        }
//                                    }
//                                }
//                                .padding()
//                            }
//                        }
//                    }
//
//        }
//
//
//    }
//    .padding(.top)
////            .ignoresSafeArea(.container)
//}
//.navigationTitle("Dashboard")
//.navigationBarTitleDisplayMode(.inline)
//
//Text("DashboardView new")
