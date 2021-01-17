//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Picture()
            
            Text("Paragraph text test. I'm a senior at Stanford University currently doing some interesting stuff ish. It would be hella cool if I could figure out how to write this and make it make sense.")
                .font(.body)
                .fontWeight(.medium)
                .padding()
        }
        .offset(y: -150)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
