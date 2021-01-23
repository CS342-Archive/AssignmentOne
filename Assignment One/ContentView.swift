//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Image("MichaelCooper").resizable().frame(width: 150, height: 150).padding()
            Text("Michael Cooper").font(.title).bold().underline()
            Divider()
            Text("I'm Michael, a M.S. Computer Science (AI) student from Victoria, Canada. My academic and research interests are centered around applying machine learning to problems in the medical space: specifically, I am excited about building robust few-shot and interpretable model architectures for application in medical image processing. In my spare time, I enjoy social dancing, skiing, paintballing, and running. I'm always looking out for good book recommendations, so don't feel shy about sharing your favourite titles with me!").font(.system(size: 14)).padding()
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
