//
//  AmitaGondi.swift
//  Assignment One
//
//  Created by Amita on 17/01/22.


import SwiftUI
import MapKit

struct AmitaGondi: View {
    @State var progress = 0.0
    @State var showing = true
    
    var body: some View {
        VStack {
            Text("Amita Gondi ").font(.title).fontWeight(.heavy).bold()
                .foregroundColor(Color.red)
                .background(Color.blue.opacity(0.5))
            Image("Amita")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .clipped()
            Text("I am a senior studying Computer Science, planning to coterm in BioE and originally from Hyderabad, India.\n I live by two mottos - 'What's the worst that can happen' and 'Jack of all trades, master of few'. ")
                .font(.system(size: 15))
                .font(.body)
            Spacer()
                        ProgressView(value: progress)
                            Button("Click here if you like these mottos", action: { progress += 0.1 })
                        Spacer()
                        Toggle(isOn: $showing){
                            if showing {
                                Text("I have a STEM major :)")
                            } else {
                                Text("I don't have a STEM major!")
                            }
                        }
            
                    }.padding()
    }

}

struct AmitaGondi_Previews: PreviewProvider {
    static var previews: some View {
        AmitaGondi()
    }
}
