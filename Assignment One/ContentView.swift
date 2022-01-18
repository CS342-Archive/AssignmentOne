//
//  ContentView.swift
//  Assignment One
//

import SwiftUI


struct ContentView: View {
    var body: some View {
    
        VStack {
            Spacer(minLength: 45)
            HStack  {
                Spacer(minLength: 10)
                CircleImage()
                VStack (alignment:.leading) {
                    Text("Taylor Lallas")
                        .font(.title)
                        
                    HStack {
                        Text("M.S. Computer Science")
                        Spacer()
                        Text("'22")
                    }.font(.subheadline).foregroundColor(.secondary)
                    HStack {
                        Text("B.A. Economics")
                        Spacer()
                        Text("'21")
                    }.font(.subheadline).foregroundColor(.secondary)
                }.padding()
            }
            LongFormText()
            HighlightReel()
            ContactMeView()
            Spacer(minLength: 15)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}
