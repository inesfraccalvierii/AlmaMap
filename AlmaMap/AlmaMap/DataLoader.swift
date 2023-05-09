//
//  DataLoader.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 05/05/23.
//

import Foundation
import SwiftUI
import CoreData

class DataLoader: ObservableObject {

    
    @Published var model = Modeldata<Legend>(fileName: "legend.json")
    
    var legend: [Legend] {
        model.list
    }
    
    var isLoading = true
    
    @Published var model2 = Modeldata<Building>(fileName: "buildings.json")
    
    var buildind: [Building] {
        model2.list
    }
    
    var isLoading2 = true
    
    
    @Published var model3 = Modeldata<Floor>(fileName: "floors.json")
    
    var floor: [Floor] {
        model3.list
    }
    
    var isLoading3 = true
    

    @Published var images: [String: UIImage] = [:]
    
    func loadImage(imageName:String, id: String) {
        images[id] = UIImage(named: imageName)!
        isLoading = false
    }
    
    let notFoundImage =  UIImage(named: "UserImg")
    
    func loadImage(url: URL, id: String) {
        DispatchQueue.global(qos: .background).async {
            let data = try? Data(contentsOf: url)
            DispatchQueue.main.async {
                if let imageData = data {
                    self.images[id] = UIImage(data: imageData)!
                    self.isLoading = false
                }
            }
        }
    }


    var lastID: Int {
        UserDefaults.standard.integer(forKey: "lastID")
    }
    
    
   
    
}

