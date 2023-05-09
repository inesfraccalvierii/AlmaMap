//
//  LegendView.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 05/05/23.
//

import Foundation
import SwiftUI



struct LegendView: View {
    
    @ObservedObject var viewModel: DataLoader
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors:  [], predicate: nil, animation: .default)
    private var ServicesCoreData: FetchedResults<LegendEntity>
    @State  var legend: Legend
    
    var legends: [Legend] {
        var list = viewModel.legend
        for legend in ServicesCoreData {
            list.append(legend.convertToUser())
        }
        return list
    }

    var body: some View {
        ZStack{
            List(legends) { legend in
                LegendRowView(legend: legend, viewModel: viewModel)

            }
        }
       

        }
        /*NavigationView{
            List(services) { service in
                NavigationLink(destination: ServiceLoadView(service: service, viewModel: viewModel)) {
                    ServiceRowView(service: service, viewModel: viewModel)
                }
                
            }
        }
       
    }
    struct ServicesView_Previews: PreviewProvider {
        static var previews: some View {
            ServicesView()
            
        }*/
    
}
