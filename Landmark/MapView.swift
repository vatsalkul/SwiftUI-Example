//
//  MaoView.swift
//  Landmark
//
//  Created by Vatsal Kulshreshtha on 06/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 26.801, longitude: 75.805)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
      }
    
        
}


#if DEBUG
struct MaoView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
