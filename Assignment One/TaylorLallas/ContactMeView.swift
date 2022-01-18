//
//  ContactMeView.swift
//  Assignment One
//
//  Created by Taylor  Lallas on 1/13/22.
//

import SwiftUI
import UIKit

struct ContactMeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            Text("Contact Me")
                .font(.headline)
            HStack(alignment: .lastTextBaseline) {
                
                Link(destination: URL(string: "mailto:tlallas@stanford.edu")!)
                {
                    Image("outlook")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .font(.largeTitle)
                }
                Spacer()
                Link(destination: URL(string: "https://github.com/tlallas")!)
                {
                    Image("git")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .font(.largeTitle)
                }
                Spacer()
                Link(destination: URL(string: "https://www.linkedin.com/in/taylor-lallas/")!)
                {
                    Image("linkedin")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .font(.largeTitle)
                }
                Spacer()
                Link(destination: URL(string: "https://www.instagram.com/taylorlallas/")!)
                {
                    Image("ig")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .font(.largeTitle)
                }
                Spacer()
            }
        }.padding()
    }
}

struct ContactMeView_Previews: PreviewProvider {
    static var previews: some View {
        ContactMeView()
    }
}
