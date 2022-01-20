//
//  SavithaSrinivasan.swift
//  Assignment One
//
//  Created by Savitha Srinivasan on 1/17/22.
//

import SwiftUI
import MapKit


struct SavithaSrinivasan: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.6101, longitude: -122.2015),
                                           span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    @State var displayAnswer: Bool = false
    var body: some View {
        VStack{
            Image("SavithaSrinivasan")
                .resizable()
                .frame(width: 150, height: 200)
                
            Text("Savitha Srinivasan").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 18/255, green: 134/255, blue: 163/255))
                .bold()
            Text("I'm a sophomore at Stanford studying Computer Science. I'm passionate about exploring how technology intersects with biomedicine, fashion, and education. On campus, I'm also a part of Stanford WiCS and Stanford Basmati Raas. In my free time, I love to dance, sing, hike, watch sunsets, and bake.")
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.all)
                .font(.body)
            
            Map(coordinateRegion: $region)
            Button(
                action: {
                    displayAnswer = true
                },
                label: {
                    Text("Fun Fact!")
                        .foregroundColor(.white)
                }
            ).alert(isPresented: $displayAnswer, content: {
                Alert(title: Text("Fun Fact"), message: Text("My favorite dessert is tiramisu!"), dismissButton: .default(Text("OK")))
            })
            .padding(.all)
            .background(Color(red: 18/255, green: 134/255, blue: 163/255))
        }
        
    }
}

struct SavithaSrinivasan_Previews: PreviewProvider {
    static var previews: some View {
        SavithaSrinivasan()
    }
}
