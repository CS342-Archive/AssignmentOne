//
//  SharonCheng.swift
//  Assignment One
//

import SwiftUI

struct SharonCheng: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Sharon Cheng")
                    .bold()
                    .font(.system(size: 30))
                    .padding()
                Image("Portrait0")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("I'm Sharon, an international Stanford undergraduate sophomore from Taiwan who is majoring in computer science. I'm currently exploring ways such as creating immersive experiences (AR/VR) to work directly with people to better their lives! Other than technology, I am also passionate in areas like medicine and art and have taken EMT training courses in Stanford's Medical School.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.system(size: 15))
                    .frame(width: 350)
                    .lineSpacing(5)
                NavigationLink (destination: InterestView(), label: {
                    Text("View my non-academic interests!")
                        .bold()
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.black
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                }
                )
            }
        }
        .accentColor(Color(.label))
    }
}

struct InterestView: View {
    var body: some View {
        
        VStack{
            Text("My Interests")
                .bold()
                .font(.system(size: 30))
                .padding()
            Image("InterestPortrait")
                .resizable()
                .frame(width: 200, height: 200)
            Text("In my free time, I love to watch sports. I'm fans of Golden State Warriors and San Francisco Giants (go Bay Area!). I also love to do art, watch anime and animation (Attack on Titan and Haikyuu are my favorite), explore nature, try tasty food, and play with children! But out of all my interests, hanging out with my family and friends bring me the most joy!")
                .multilineTextAlignment(.center)
                .padding()
                .font(.system(size: 15))
                .frame(width: 350)
                .lineSpacing(5)
            Link("Let's connect!", destination: URL(string: "https://www.linkedin.com/in/sharon-cheng-61a317204/")!)
                .padding()
                .foregroundColor(Color.white)
                .background(Color.black.cornerRadius(10)
                                .shadow(radius: 10))
        }
    }
    
}


struct SharonCheng_Previews: PreviewProvider {
    static var previews: some View {
        SharonCheng()
        InterestView()
    }
}
