//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("headshot")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .frame(height: 200.0)
                .shadow(radius: 7)
                .padding(.bottom, -10.0)
              
            VStack(alignment: .leading) {
                Text("Rachel Naidich")
                    .font(.title)

                HStack {
                    Text("Stanford Student")
                        .font(.subheadline)
                    Spacer()
                    Text("CS Major")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("About Me")
                   .font(.title2)
                Text("Hi! I'm a sophomore at Stanford studying computer science, and I'm passionate about startups and creating technologies that have positive impact. In my free time, I enjoy going for runs and playing chess.")
                
                Spacer()
                
                Link("My website", destination: URL(string: "https://rachelnaidich.me")!)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
