//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var description = "I am a Ph.D. candidate in ICME at Stanford University where I am advised by Prof. Christopher Ré. My research interests include Machine Learning, Representation Learning and Relational Reasoning. More specifically, I am interested in designing models that can learn representations for complex relational structures such as graphs. I am particularly excited by applications in the field of Computer Vision and Natural Language Processing, such as understanding how objects interact in images or how entities are related in Knowledge Graphs. During my free time, I enjoy surfing, practicing yoga and photography. I posted some of my pictures below."
    var body: some View {
        ScrollView {
            VStack {
                Image("stanford")
                    .ignoresSafeArea(edges: .top)
                Image("ines_chami")
                    .resizable()
                    .frame(width: 200.0,height:200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                    .shadow(radius: 7)
                    .offset(y: -100)
                    .padding(.bottom, -80)
                Text("Ines Chami")
                    .font(.title)
                    .foregroundColor(.primary)
                Divider()
                Text("About")
                    .font(.title2)
                    .foregroundColor(.primary)
                Text(description)
                    .padding()
            }
            Divider()
            PhotoView()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
