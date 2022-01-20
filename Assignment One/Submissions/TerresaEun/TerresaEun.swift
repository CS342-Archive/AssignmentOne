//
//  TerresaEun.swift
//  Assignment One
//
//  Created by Terresa Eun on 1/17/22.
//

import SwiftUI

struct TerresaEun: View {
    @State var isShowing = false
    
    var body: some View {
        ZStack {
            Color(red: 140/255, green: 21/255, blue: 21/255)
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Image("TerresaEun")
                        .resizable()
                        .frame(width: 275, height: 275)
                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                        .shadow(radius: 7.5)
                    
                    Spacer()
                        .frame(height: 35)
                    
                    Group {
                        Text("Terresa Eun")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding()
                            .border(Color.white, width: 4)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        Text("Bio")
                            .font(.title2)
                        Spacer()
                            .frame(height: 7.5)
                        Text("Terresa Eun is a PhD candidate in sociology at Stanford University. She is broadly interested in the intersection of health and inequality. More specifically, her research interests include social inequalities in health phenomena; the intergenerational transfer of health through wealth (and vice versa); and the relationship among health, status, and organizations.")
                            .font(.body)
                            .padding(.horizontal, 17.5)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Links")
                            .font(.title2)
                        HStack {
                            Link("Stanford Sociology", destination: URL(string: "https://sociology.stanford.edu/people/terresa-eun")!)
                            Divider()
                            Link("LinkedIn", destination: URL(string: "https://www.linkedin.com/in/terresaeun/")!)
                        }
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Group {
                        Text("Psstt...")
                            .font(.title2)
                            .italic()
                        Toggle(isOn: $isShowing) {
                            Text("Toggle me to learn more!")
                        }
                        if isShowing {
                            Text("Terresa is from Southern California and went to college in Boston, where she also lived for a couple years post-graduation. In Boston, she learned that she is very bad at winter.\n\nIn her free time, she enjoys reading, knitting, and running. She also enjoys anything to do with food, including eating and baking.\n\nShe really wants a dog.")
                                .font(.body)
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 17.5)
                }
            }
        }
    }
}

struct TerresaEun_Previews: PreviewProvider {
    static var previews: some View {
        TerresaEun()
    }
}
