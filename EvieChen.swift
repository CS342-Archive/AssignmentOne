//
//  EvieChen.swift
//  Assignment One
//
//  Created by Evie Chen on 2022/1/17.
//

import SwiftUI

struct EvieChen: View {
    var body: some View {
        VStack {
            Image("evie")
                .resizable()
                .frame(width: 100, height: 130)
                .cornerRadius(25)
            Text("Hello! It's Evie :)!")
                .font(.headline)
                .fontWeight(.black)
            Text("Evie is a sophomore from Taipei, Taiwan. She is very interested in biology and psychology and wants to work in the psychiatry field in the future.")
                .font(.subheadline)
                .padding()
            HStack (){
                VStack (){
                Image("ig")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .cornerRadius(25)
                Link("Instagram", destination: URL(string: "www.instagram.com/itseviexx_")!)
                }
                VStack (){
                    Image("vsco")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .cornerRadius(25)
                    Link("VSCO", destination: URL(string: "vsco.co/eviexchen")!)
                }
            }
            
    }
}

struct EvieChen_Previews: PreviewProvider {
    static var previews: some View {
        EvieChen()
    }
}
}
