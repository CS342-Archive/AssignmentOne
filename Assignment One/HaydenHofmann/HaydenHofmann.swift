//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct HaydenHofmann: View {
    var body: some View {
        VStack {
        Profile()
            Text("Hayden Hofmann").font(.title)
            Text("Hayden grew up in Los Altos, California. Now he is a Senior at Stanford University studying Computer Science on the Artificial Intelligence track. After graduation, Hayden plans on going to medical school where he hopes to work at the interface of CS and medicine. Outside of the classroom, Hayden enjoys fishing, surfing, and watching sports with friends and family. ").font(.subheadline).multilineTextAlignment(.center)
            HStack (){
                Link("LinkedIn", destination: URL(string: "https://www.linkedin.com/in/hayden-hofmann-253013174/")!)
                Link("Stanford Profile", destination: URL(string: "https://profiles.stanford.edu/hayden-hofmann")!)
            }
            

        }
    }
}

struct HaydenHofmann_Previews: PreviewProvider {
    static var previews: some View {
        HaydenHofmann()
    }
}
