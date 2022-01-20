//
//  RaghavSamavedam.swift
//  Assignment One
//
//  Created by Raghav Samavedam on 1/17/22.
//

import SwiftUI



struct RaghavSamavedam: View {
    @State var progress = 0.5
    @State var isShowing = true
    var body: some View {
        
        VStack {
            Image("RaghavSamavedam").resizable().scaledToFill().frame(width: 370, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("Raghav Samavedam").font(.title)
            Spacer()
            Text("I am a sophomore at Stanford University focusing on machine learning applied to a number of fields like robotics, climate and healthcare")
            Spacer()
            ProgressView(value: progress)
                Button("Click here if you want more ML", action: { progress += 0.05 })
            Spacer()
            Toggle(isOn: $isShowing){
                if isShowing {
                    Text("I like Machine Learning")
                } else {
                    Text("I don't like Machine Learning")
                }
            }
            
        }.padding()
        
    }
}

struct RaghavSamavedam_Previews: PreviewProvider {
    static var previews: some View {
        RaghavSamavedam()
    }
}
