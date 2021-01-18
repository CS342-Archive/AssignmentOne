//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                    .offset(y: -50)
                
                Group {
                    Picture()

                    Group {
                    RowDescription(image: "california", description: "I'm from San Diego, California and am currently a Senior at Stanford working towards a B.S. in Bioengineering and a M.S. in Computer Science.")
                        
                    RowDescription(image: "chess", description: "Aside from school, I enjoy playing chess, roadtripping, and spending time with family.")
                    RowDescription(image: "OB", description: "I'm currently working on machine learning development for a startup Biotech company called OpenBench.")
                    RowDescription(image: "tahoe", description: "This quarter I'm spending in Lake Tahoe with 7 friends--2 are also taking this class!")
                    }
                    .padding(-10)
                }
                .offset(y: -150)
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
