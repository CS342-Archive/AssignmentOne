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
                .shadow(color: Color.black.opacity(0.2), radius: 5)
        }
    }
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Image("Biodesign")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .padding()
                    
                    HStack {
                        
                        Image("Spaceman")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                        
                        VStack {
                            Text("Welcome to")
                                .font(.system(size: 35))
                                .fontWeight(.ultraLight)
                            Text("Building for Digital Health")
                                .font(.system(size: 35))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                        }
                        
                    }
                }
                
                Spacer().frame(height: 100)
                
                VStack {
                    NavigationLink(destination: StudentList()){
                        HStack {
                            Text("Meet the Class")
                            Spacer()
                            Image(systemName: "person.2")
                        }.modifier(CustomButton(color: "CustomOrange"))
                    }
                    Spacer().frame(height: 20)
                    NavigationLink(destination: TeacherList()){
                        HStack {
                            Text("Meet the Teaching Team")
                            Spacer()
                            Image(systemName: "person.2")
                        }.modifier(CustomButton(color: "CustomBrown"))
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
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
