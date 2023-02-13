//
//  Camera.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 10.02.2023.
//

import Foundation

struct Camera: Identifiable, Codable, Hashable {
    var id = UUID().uuidString
    var name: String
    var adress: String
}


