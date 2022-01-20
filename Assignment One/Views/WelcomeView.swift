//
//  WelcomeView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct WelcomeView: View {
    
    struct CustomButton: ViewModifier {
        
        var color: String
        
        func body(content: Content) -> some View {
            content
                .font(.system(size: 20, weight: .semibold))
                .frame(width: 300, height: 25, alignment: .leading)
                .padding()
                .background(Color(color))
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
    
    var body: some View {
        VStack {
            
            VStack {
                Image("Biodesign")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding()
                
                Text("Welcome to CS342")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .padding()
                
                Text("Building for Digital Health")
                    .font(.system(size: 30))
                    .fontWeight(.light)
            }
            
            Spacer()
            
            Image("Spaceman")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Spacer()
            
            VStack {
                NavigationLink(destination: StudentList()){
                    HStack {
                        Text("Meet your Class")
                        Spacer()
                        Image(systemName: "person.2")
                    }.modifier(CustomButton(color: "CustomOrange"))
                }
                Spacer().frame(height: 20)
                NavigationLink(destination: TeacherList()){
                    HStack {
                        Text("Meet your Teaching Team")
                        Spacer()
                        Image(systemName: "person.2")
                    }.modifier(CustomButton(color: "CustomOrange"))
                }
                Spacer().frame(height: 20)
                NavigationLink(destination: ProjectsView()){
                    HStack {
                        Text("Learn about the Projects")
                        Spacer()
                        Image(systemName: "waveform.path.ecg.rectangle")
                    }.modifier(CustomButton(color: "CustomGreen"))
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
