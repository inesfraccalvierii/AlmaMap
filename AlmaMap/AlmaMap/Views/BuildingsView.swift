//
//  BuildingsView.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 05/05/23.
//

import Foundation
import SwiftUI



struct BuildingsView: View {
    
    @ObservedObject var viewModel: DataLoader
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors:  [], predicate: nil, animation: .default)
    private var BuildingsCoreData: FetchedResults<BuildingEntity>
    @State  var building: Building
    
    var buildings: [Building] {
        var list = viewModel.building
        for building in BuildingsCoreData {
            list.append(building.convertToUser())
        }
        return list
    }

    var body: some View {
        ZStack{
            List(buildings) { building in
                NavigationLink(destination: FloorView(viewModel: viewModel, building: building)) {
                    HStack{
                        Text(building.name)
                       // BuildingRowView(building: building, viewModel: viewModel)
                    }
                    
               }

            }
        }
       

    }
    
}

