//
//  Building.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 08/05/23.
//
import Foundation
import CoreLocation

struct Building : Identifiable, Decodable {
    
    var id: Int32
    var code: String
    var name: String
    var desc: String
    
    init(id: Int32, code: String, name: String, desc: String) {
        self.id = id
        self.code = code
        self.name = name
        self.desc = desc
    }
}
