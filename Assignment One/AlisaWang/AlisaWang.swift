//
//  ContentView.swift
//  Assignment One
//

import SwiftUI
import MapKit

struct AlisaWang: View {
    @State private var isSubmitted = false
    @State private var message: String = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
        VStack {
            Image("AlisaWang")
                .resizable()
                .frame(width: 140.0, height: 100.0)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            Text("Alisa Wang")
                .font(.title2)
                .fontWeight(.heavy)
            Text("Alisa is from Chicago, IL, and she is currently a junior studying Computer Science and a coterm in Management Science & Engineering. She is enthusiastic about learning how technology can be applied to medicine. In her free time, she enjoys making music, reading, and going on hikes.")
                .font(.subheadline)
                .padding()
            TextField("Leave me a note!", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            Button(
                action: {
                    isSubmitted = true
                },
                label: { Text("Submit") }
            ).alert(isPresented: $isSubmitted, content: {
                Alert(title: Text("Submitted"), message: Text("Thanks! :)"), dismissButton: .default(Text("OK")))
            })
        }

        }
        

    }
}
