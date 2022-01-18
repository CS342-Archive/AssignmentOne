//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
        Text("Lavender Chen".uppercased())
            .font(.system(.title, design: .rounded))
            .bold()
            .foregroundColor(.purple)
            .multilineTextAlignment(.center)
        Image("bio_image")
            .resizable()
            .scaledToFit()
        Button(action: {
            }, label: {
        Link("Get to know me!", destination: URL(string: "https://lavenderchen.notion.site/498a21745b8d427cb49e28ce1ce78b51?v=b5c0cc17763f4bca806a5c9562596344")!)
                .multilineTextAlignment(.center)})
        Divider()
        Text("Lavender (Zi-Xun) Chen was born in 2002 in Taipei, Taiwan. She then immigrated to America at 1-year-old to San Francisco, California. She is a second-year undergraudate student, currently studying Symbolic Systems with a concentration in Human-Computer-Interaction at Stanford University. In her free time, she enjoys watching K-drama and BTS, baking, and traveling.")
            .font(.headline)
            .fontWeight(.regular)
            .padding(.bottom)
        }
        .padding(.horizontal)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
