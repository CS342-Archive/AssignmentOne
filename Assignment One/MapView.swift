//
//  MapView.swift
//  Assignment One
//
//  Created by CS342_Laptop_1 on 1/25/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State var region = MKCoordinateRegion(
         center: CLLocationCoordinate2D(
             latitude: 39.2746,
             longitude: -120.1211
         ),
         span: MKCoordinateSpan(
             latitudeDelta: 0.8,
             longitudeDelta: 0.8
         )
     )
    
    var body: some View {
        
        VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            
            Image(systemName: "arrowtriangle.down")
                .padding()
            
            Spacer().frame(height: 50)
            
        
            Text("We're in...")
            Text("Truckee, CA!").font(.title)
            
            Map(coordinateRegion: $region,
                annotationItems: [PinItem(coordinate: .init(latitude: 39.2746, longitude: -120.1211))])
             { item in
                 MapMarker(coordinate: item.coordinate)

            }.cornerRadius(15).padding()
            
            Spacer()
            
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

