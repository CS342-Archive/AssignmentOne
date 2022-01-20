//
//  LinaFang.swift
//
//
//  Created by Surabhi Mundada on 1/19/22.
//

import SwiftUI
import MapKit

struct LinaFang: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.62101317361771, longitude: 10.230304550929638),
        span: MKCoordinateSpan(latitudeDelta: 12, longitudeDelta: 12)
        )
    var body: some View {
        Text("Hello CS342!")
        VStack (alignment: .center, spacing: 20){
            Image("PortraitLina")
                .resizable()
                .frame(width: 150,
                       height: 150)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                        }
                .shadow(radius: 5)
                .padding()
            Text("Lina Fang")
                .font(.title)
            Text("Hi, I'm Lina! I'm a second-year Master's student in MS&E. I'm from Giengen, a tiny town in Germany, and I did my undergraduate studies in ME at the Technical University of Munich. I am passionate about solving problems at the intersection of technology and health, and I strive to become an entrepreneur in this space. In my free time, I love traveling, all sorts of outdoor activities, cooking, and playing the violin and the piano.")
                .padding()
            Map(coordinateRegion: $region)
                .padding()
            Link("My LinkedIn Profile", destination: URL(string: "https://www.linkedin.com/in/linafang/")!)
        }
    }
}
