//
//  testView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI
import AVKit

struct testView: View {
    @State private var player = AVPlayer()
    @State private var player2 = AVPlayer()
    @State private var player3 = AVPlayer()
    @State private var player4 = AVPlayer()
    
    var body: some View {
        VStack{
            HStack {
                ZStack {
                    Rectangle()
                        .frame(minWidth: 300, maxWidth: 320, minHeight: 180, maxHeight: 200)
                    //                .frame(width: 320, height: 200)
                        .foregroundColor(.gray)
                    
                    VideoPlayer(player: player)
//                                    .ignoresSafeArea(.all)
                        .onAppear {
                            let item = AVPlayerItem(url: Bundle.main.url(forResource: "example1", withExtension: "mov")!)
                            player.replaceCurrentItem(with: item)
                            player.play()
                        }
                        .frame(width: 310, height: 190)
                }
                
                ZStack {
                    Rectangle()
                        .frame(minWidth: 300, maxWidth: 320, minHeight: 180, maxHeight: 200)
                    //                .frame(width: 320, height: 200)
                        .foregroundColor(.gray)
                    
                    VideoPlayer(player: player2)
                    //                .ignoresSafeArea(.all)
                        .onAppear {
                            let item = AVPlayerItem(url: Bundle.main.url(forResource: "example2", withExtension: "mov")!)
                            player2.replaceCurrentItem(with: item)
                            player2.play()
                        }
                        .frame(width: 310, height: 190)
                }
            }
            HStack {
                ZStack {
                    Rectangle()
                        .frame(minWidth: 300, maxWidth: 320, minHeight: 180, maxHeight: 200)
                    //                .frame(width: 320, height: 200)
                        .foregroundColor(.gray)
                    
                    VideoPlayer(player: player3)
                    //                .ignoresSafeArea(.all)
                        
                        .onAppear {
                            let item = AVPlayerItem(url: Bundle.main.url(forResource: "example3", withExtension: "mov")!)
                            player3.replaceCurrentItem(with: item)
                            player3.play()
                        
                        }
                        .frame(width: 310, height: 190)
                }
                
                ZStack {
                    Rectangle()
                        .frame(minWidth: 300, maxWidth: 320, minHeight: 180, maxHeight: 200)
                    //                .frame(width: 320, height: 200)
                        .foregroundColor(.gray)
                    
                    VideoPlayer(player: player4)
//                                    .ignoresSafeArea(.all)
                        .onAppear {
                            let item = AVPlayerItem(url: Bundle.main.url(forResource: "example4", withExtension: "mov")!)
                            player4.replaceCurrentItem(with: item)
                            player4.play()
                        }
                        .frame(width: 310, height: 190)
                }
            }
        }
        
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
