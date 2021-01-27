//
//  ContentView.swift
//  Assignment One
//

import SwiftUI
import MessageUI

struct ContentView: View {
    let screenSize = UIScreen.main.bounds
    
    let bio = Text("Amrita (she/her) is a MS student in Computer Science, with a BS in Biology, from Clarksville, Maryland. She was born in India and has two sisters, one older and one younger. She isn't sure yet what her future career will look like, but knows that she wants to work on creating a more equitable, just world. She loves watching TV and film (Aziz Ansari's") + Text(" Master of None").italic() + Text(" is a perfect show!) and playing tennis in her free time. ")
    
    var body: some View {
        VStack(alignment: .center){
            ZStack{
                Image("837257")
                    .resizable()
                    .aspectRatio(1.78, contentMode: .fill)
                    .frame(height: screenSize.height*(0.50))
                    .ignoresSafeArea(edges: .top)
                
                VStack{
                    Image("IMG_0662 2")
                        .resizable()
                        .aspectRatio(0.925, contentMode: .fit)
                        .frame(width: screenSize.width/2)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                    Text("Amrita Kaur")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    HStack{
                        Image("thumbtack-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: screenSize.height/35)
                        Text("CLARKSVILLE, MARYLAND")
                            .foregroundColor(.white)
                            
                    }
                    .offset(y: -screenSize.height/60)
                }
                .offset(y: -screenSize.height*(0.03))
            }
            
            bio
                .multilineTextAlignment(.center)
                .frame(width: screenSize.width*(7/8))
            
            Spacer()
            
            Divider()
            
            Spacer()
            
            Link("Contact", destination: URL(string: "mailto:amritak@stanford.edu")!)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
