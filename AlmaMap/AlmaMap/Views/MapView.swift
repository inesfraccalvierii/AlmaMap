//
//  MapView.swift
//  AlmaMap
//
//  Created by Ines Fraccalvieri on 04/05/23.
//

import Foundation
import SwiftUI


struct MapView: View {
    

  
    var body: some View {
            
            //Text("mappa")
           
        VStack{
            Image("Campus")
            HStack{
                
                Button {
                        
                    } label: {
                        Image(systemName: "arrow.up")
                    }
            }
        }
        
        }
    }
       
        


    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
            
        }
    }

