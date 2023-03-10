//
//  FeaturesView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import SwiftUI

struct FeaturesView: View {
    var body: some View {
        VStack {
            Text("View for some future Features:")
                .padding()
                .bold()
            Text("Snapshots, support, sensors, history, search by time and camera, etc")
        }
            .padding()
    }
}

struct FeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesView()
    }
}
