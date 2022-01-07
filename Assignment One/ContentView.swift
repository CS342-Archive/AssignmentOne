//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Image("Portrait")
                .resizable()
                .frame(width: 150, height: 150)
        Text("HEY CS342!")
                .bold()
                .padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: -Spot
