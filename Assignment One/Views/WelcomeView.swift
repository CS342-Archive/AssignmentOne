//
//  WelcomeView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct WelcomeView: View {
    
    struct CustomButton: ViewModifier {
        
        func body(content: Content) -> some View {
            content
            .font(.system(size: 20))
            .frame(width: 300, height: 25, alignment: .center)
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .border(.gray, width: 1)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("Welcome to CS342")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .padding()
                
                Text("Building for Digital Health")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            VStack {
                NavigationLink(destination: StudentList()){
                    Text("Meet your Classmates")
                        .modifier(CustomButton())
                        
                }
                Spacer().frame(height: 20)
                NavigationLink(destination: StudentList()){
                    Text("Meet your Teaching Team")
                        .modifier(CustomButton())
                }
                Spacer().frame(height: 20)
                NavigationLink(destination: StudentList()){
                    Text("Learn about the Projects")
                        .modifier(CustomButton())
                }
            }
            
            Spacer()
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
