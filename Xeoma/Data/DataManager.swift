//
//  DataManager.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import Foundation
import SwiftUI

class DataManager {
    @AppStorage("number_of_cameras") var numbersOfCameras = 0
    
    func saveCamerasToUserDetaults(arrayOfCameras: [Camera]) {
        if let encoded = try? JSONEncoder().encode(arrayOfCameras) {
            UserDefaults.standard.set(encoded, forKey: "arrayOfCameras")
            numbersOfCameras = arrayOfCameras.count
        }
    }
    
    func loadCamerasFromUserDefaults() -> [Camera]? {
        if let data = UserDefaults.standard.object(forKey: "arrayOfCameras") as? Data,
           let array = try? JSONDecoder().decode([Camera].self, from: data) {
            numbersOfCameras = array.count
            return array
            
        }
        print("Нет сохраненных камер")
        return nil
    }
    
    func deleteAllCamerasFromUserDefaults() {
        UserDefaults.standard.set(nil, forKey: "arrayOfCameras")
        numbersOfCameras = 0
//        let arrayOfCameras: [Camera] = []
//        if let encoded = try? JSONEncoder().encode(arrayOfCameras) {
//
//        }
    }
    
}
