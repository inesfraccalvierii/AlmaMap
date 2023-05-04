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
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        }
  

    var body: some View {
      
            TabView{
                ServicesView(account: viewModel.getAccount(username: username,  viewContext: viewContext),viewModel: DataLoader()).tabItem(){
                    Image(systemName: "eurosign.circle")
                    Text("Servizi")
                }
                MapView().tabItem(){
                    Image(systemName: "globe.europe.africa")
                    Text("Mappa")
                }
                ProfileView(user: viewModel.getUser(username: username, password: password,  viewContext: viewContext), viewModel: viewModel).tabItem(){
                    Image(systemName: "person.circle")
                    Text("Profilo")
                }
            }
                .accentColor(Color("BottomBar"))
                .navigationTitle("AlmaMap").navigationBarBackButtonHidden(true).navigationBarTitleDisplayMode(.inline)
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

