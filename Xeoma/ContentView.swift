//
//  ContentView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 08.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CustomTabView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


