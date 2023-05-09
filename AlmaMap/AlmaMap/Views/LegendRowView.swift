//
//  LegendRowView.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 05/05/23.
//

import Foundation
import SwiftUI


/// View for the NavigationLink
struct LegendRowView: View {
    var legend: Legend
    @ObservedObject var viewModel: DataLoader
    var body: some View {
        HStack {
            Text(legend.name)
        }
    }
}
