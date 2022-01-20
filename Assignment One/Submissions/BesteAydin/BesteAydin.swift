//
//  BesteAydin.swift
//  Assignment One
//
//  Created by Beste Aydin on 1/18/22.
//

import SwiftUI

struct BesteAydin: View {
    @State var opinion: String = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                Image("beste")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 7)
                    
                VStack{
                    Text("Hello, I am")
                        .font(.title3)
                        .foregroundColor(Color.gray)
                        .lineLimit(0)
                    Text("Beste Aydin")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                }
                
                Text("I am from Michigan and recently graduated with my BS in computer engineering from the University of Michigan. Now I am studying for my Master's in electrical engineering at Stanford. I am interested in using hardware and software in the healthcare field.")
                    .font(.body)
                    .padding()
                VStack{
                    Text("Progress towards finishing my Master's:")
                        .font(.subheadline)
                        .fontWeight(.thin)
                    ProgressView(value: 0.167)
                        .padding(.horizontal)
                        .accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                }
                VStack{
                    Text("I love cycling, solving jigsaw puzzles, playing video games and drawing. I generally draw digitally, but lately have been experimenting with 3D art using VR. Here is one of my paintings:")
                        .font(.body)
                        .padding([.top, .leading, .trailing])
                    Link("VR Painting", destination: URL(string: "https://youtu.be/wo_cWhr0fak")!)
                        .accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                }
                VStack{
                    TextField("What did you think?", text: $opinion)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding()
            
            }
                
        }
    }
}

struct BesteAydin_Previews: PreviewProvider {
    static var previews: some View {
        BesteAydin()
    }
}
