//
//  ProjectCard.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct ProjectCard: View {
    var project: Project
    var backgroundColor: Color = Color("CustomGreen")
    
    @State private var showDetails = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(backgroundColor)
            .overlay(
                HStack {
                    VStack(alignment: .leading){
                        Text(project.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        
                        Text(project.description)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        
                        Text("Led by \(project.mentors)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        
                        Spacer()
                        
                        Button("Learn More"){
                            showDetails.toggle()
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .clipShape(Capsule())
                        .sheet(isPresented: $showDetails, content: {
                            VStack(){
                                VStack(){
                                    HStack {
                                        
                                        Image(project.logo)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 75, height: 75)
                                            .cornerRadius(10)
                                        
                                        Spacer().frame(width: 20)
                                        
                                        VStack {
                                            Text(project.name)
                                                .font(.system(size: 40))
                                                .foregroundColor(.white)
                                                .fontWeight(.semibold)
                                                .multilineTextAlignment(.center)
                                            
                                            Text(project.description)
                                                .font(.system(size: 20))
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.white)
                                        }
                                    }.padding(.bottom, 15)
                                    
                                    
                                    
                                    Text("Led by \(project.mentors)")
                                        .font(.system(size: 20))
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding(.bottom, 15)
                                    
                                    ScrollView{
                                        Text(project.proposal)
                                            .foregroundColor(.white)
                                            .padding(.bottom, 15)
                                    }.padding(15)
                                    
                                    HStack{
                                        if let urlString = project.github, let url = URL(string: urlString){
                                            Link("Team Github", destination: url)
                                                .padding()
                                                .foregroundColor(.white)
                                                .background(Color(red: 0, green: 0, blue: 0.5))
                                                .clipShape(Capsule())
                                        }
                                        
                                        if let urlString = project.url, let url = URL(string: urlString){
                                            Link("Team Card", destination: url)
                                                .padding()
                                                .foregroundColor(.white)
                                                .background(Color(red: 0, green: 0, blue: 0.5))
                                                .clipShape(Capsule())
                                        }
                                        
                                    }
                                    
                                    
                                }.padding(15)
                            }.background(backgroundColor)
                        })
                        
                        Spacer()
                        
                    }.padding(.top, 20).padding(.leading, 20)
                    Spacer()
                }
            )
            .frame(height: 300)
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(20)
    }
}
