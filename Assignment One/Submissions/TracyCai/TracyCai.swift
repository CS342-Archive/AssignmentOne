//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct TracyCai: View {
    @State var funFact: String = ""
    var body: some View {
        VStack{
            Image("tracy")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(25)
            Text("Tracy Cai")
                .font(.headline)
            Text("Tracy is a coterm student in computer science. She is passionate about building products to make impacts. In her free time, Tracy enjoys hiking, cooking, and painting. she is also interested in photography and desgin. ")
                .font(.subheadline)
                .padding()
            Button {
                self.funFact = "Mochi Red Bean Milk Tea 🧋"
            } label: {
                Text("👀 Fun Fact")
                    .font(.system(size: 12, weight: .bold))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black)
            }.cornerRadius(25)
            TextField("Guess Tracy's favorite boba drink", text: $funFact)
                .multilineTextAlignment(.center)
                .font(.system(size: 12))
                .padding()
        }
    }
}

struct TracyCai_Previews: PreviewProvider {
    static var previews: some View {
        TracyCai()
    }
}
