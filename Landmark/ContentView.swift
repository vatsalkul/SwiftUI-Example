//
//  ContentView.swift
//  Landmark
//
//  Created by Vatsal Kulshreshtha on 06/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
    
            MapView().frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom, -130)
        
       VStack(alignment: .leading){
            Text("Vatsal Kulshreshtha")
                .font(.title)
         HStack() {
                Text("Chandigarh University")
                .font(.subheadline)
                Spacer()
                Text("Artificial Intelligence")
            }
     
        }.padding()
            
            
         Spacer()
    }
       
    
    }
    
        
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
