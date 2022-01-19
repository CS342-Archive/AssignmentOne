//
//  YoonjuKim.swift
//  Assignment One
//
//  Created by Yoon-Ju Kim on 1/17/22.
//

import SwiftUI

struct YoonjuKim: View {
    var body: some View {
            
        VStack(){
            //button
            Button(action: {
            }, label: {
                
                Text("YOONJU KIM")
                    .fontWeight(.bold)
                    .tracking(15)
                    .font(.system(size: 20))
            })
            .frame(width: 300, height: 20)
            .foregroundColor(Color.white)
            .padding()
            .background(Color.orange)
            .cornerRadius(150)
            .padding(.bottom, 5.0)
            
            //image intros
            HStack(spacing: 60){
                //Mood
                VStack{
            Text("MOOD")
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .lineLimit(1)
                .font(.system(size: 12))
                    
            Image(systemName: "sun.max")
                        .renderingMode(.original)
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: 28, height: 28)
                }
                //Love - Snow
                VStack{
            Text("LOVE")
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .lineLimit(1)
                .font(.system(size: 12))
                    
            Image(systemName: "globe.americas")
                        //.renderingMode(.original)
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: 28, height: 28)
                }
                //love earth/nature
                VStack{
            Text("HOBBY")
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .lineLimit(1)
                .font(.system(size: 12))
                    
            Image(systemName: "car")
                        .renderingMode(.original)
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: 28, height: 28)

                }
           

            }
            
            Image("Yoonjuk")
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .aspectRatio(contentMode: .fill)
                .frame(width: 300.0, height: 250.0)
                .clipShape(Circle())
                .overlay (
                    Circle().stroke(Color.white, lineWidth: 4)
               )
            
                .padding(.top)
            
            HStack(){
            Text("+")
                .font(.system(.title, design: .default))
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
                .lineLimit(3)
            Text("About Me")
                    .font(.system(.title, design: .default))
                    .fontWeight(.medium)
                    .lineLimit(3)
                
            Text("+")
                    .font(.system(.title, design: .default))
                    .fontWeight(.medium)
                    .foregroundColor(Color.orange)
                    .lineLimit(3)
                
            }
        
            
            Text("Yoonju is a Sophomore at Stanford Univeristy studying Symsys. She is interested in the intersection between art, business, and tech.")
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .lineLimit(5)
                .font(.body)
                .padding(1)
            
            Link("View Yoonju's Portfolio", destination: URL(string: "yoonju-kim.weebly.com")!)
                .padding(.top)

        }
        
        
    
    }
        


struct YoonjuKim_Previews: PreviewProvider {
    static var previews: some View {
        YoonjuKim()
    }
}
}

