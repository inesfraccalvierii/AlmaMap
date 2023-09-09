//
//  FloorRowView.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 09/05/23.
//

import SwiftUI

struct FloorRowView: View {
    
    var floor: Floor
    @ObservedObject var viewModel: DataLoader
    var body: some View {
        HStack {
            Text(String(floor.number) + "° Piano")
        }
    }
}

