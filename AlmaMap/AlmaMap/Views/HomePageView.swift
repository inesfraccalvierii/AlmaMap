//
//  HomePageView.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 04/05/23.
//


import Foundation
import SwiftUI



struct HomePageView: View {
    
    
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().unselectedItemTintColor = UIColor(hue: 0.0222, saturation: 1, brightness: 0.81, alpha: 1.0)
        }
  

    var body: some View {
      
            TabView{
                MapView().tabItem(){
                    Image(systemName: "globe.europe.africa")
                    Text("Mappa")
                }
                BuildingsView().tabItem(){
                    Image(systemName: "building.2.crop.circle")
                    Text("Edifici")
                }
                LegendView().tabItem(){
                    Image(systemName: "book.circle")
                    Text("Legenda")
                }
            }
            .accentColor(Color.black)
                .navigationTitle("AlmaMap").navigationBarBackButtonHidden(true).navigationBarTitleDisplayMode(.inline)
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

