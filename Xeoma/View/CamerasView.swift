//
//  CamerasView.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 10.02.2023.
//

import SwiftUI
import AVKit

struct CamerasView: View {
    @AppStorage("USER_KEY") var username = ""
    @State private var isAddingItem = false
    @State private var itemToAdd = Camera(name: "", adress: "")
    @State var searchText = ""
    @AppStorage("number_of_cameras") var numbersOfCameras = 0
    
//    var cameras = [
//        Camera(name: "Cam1", adress: "example1"),
//        Camera(name: "Cam2", adress: "example2"),
//        Camera(name: "Cam3", adress: "example3"),
//        Camera(name: "Cam4", adress: "example4")
//
//    ]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Hello, \(username)")
                        .font(.title2)
                        .bold()
                    Text("Here you can manage your cameras")
                }
                
                Spacer()
                
                Button(action: { isAddingItem = true }) {
                    HStack{
//                        Text("Add Camera")
                        Image(systemName: "plus.circle")
                            .resizable()
                            .foregroundColor(Color(.systemBlue))
                            .frame(width: 35, height: 35)
                            
                    }
                }
                
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search camera", text: $searchText)
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    HStack {
                        Text("My Cameras (\(numbersOfCameras))")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {
                            // Временно привязал функцию удаления к этой кнопке, для теста
                            DataManager().deleteAllCamerasFromUserDefaults()
                            
                        }) {
                            Text("View All")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
//                    if let cameras = loadCamerasFromUserDefaults() {
                    if let cameras = DataManager().loadCamerasFromUserDefaults() {
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                            ForEach(cameras) { camera in
                                NavigationLink(destination: VideoView(camera: camera)) {
                                    CameraCardView(camera: camera)
                                }
                            }
                        }
                        .padding(.top)
                    }
                }
                .padding()
            }
        }
        .alert("New Camera", isPresented: $isAddingItem, actions: {
            TextField("Camera name", text: $itemToAdd.name)
                .padding(.bottom, 5)
            TextField("Camera adress", text: $itemToAdd.adress)
                .autocapitalization(.none)
                .autocorrectionDisabled(true)
                .keyboardType(.decimalPad)
            Button("Save") {
                addItem()
            }
            Button("Cancel", role: .cancel, action: {})
        }, message: {
            Text("Please enter name for Camera and its adress.")
        })
    }
    
//    func saveCamerasToUserDetaults(arrayOfCameras: [Camera]) {
//        if let encoded = try? JSONEncoder().encode(arrayOfCameras) {
//            UserDefaults.standard.set(encoded, forKey: "arrayOfCameras")
//        }
//    }
//
//    func loadCamerasFromUserDefaults() -> [Camera]? {
//        if let data = UserDefaults.standard.object(forKey: "arrayOfCameras") as? Data,
//           let array = try? JSONDecoder().decode([Camera].self, from: data) {
//            return array
//
//        }
//        print("Нет сохраненных камер")
//        return nil
//    }
    
    func addItem() {
        if itemToAdd.name != "" && itemToAdd.adress != "" {
            var array = DataManager().loadCamerasFromUserDefaults()
            array?.append(Camera(name: itemToAdd.name, adress: itemToAdd.adress))
            itemToAdd.name = ""
            itemToAdd.adress = ""
            DataManager().saveCamerasToUserDetaults(arrayOfCameras: array ?? [])
//            saveCamerasToUserDetaults(arrayOfCameras: array ?? [])
        }
        isAddingItem = false
    }
}

struct CamerasView_Previews: PreviewProvider {
    static var previews: some View {
        CamerasView()
    }
}
