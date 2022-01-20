//
//  VarunAgarwal.swift
//  Assignment One
//
//  Created by Varun on 1/19/22.
//

import SwiftUI

struct VarunAgarwal: View {
    var body: some View {
        VStack (alignment: .center, spacing: 20){
            Image("VarunAgarwal").clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3))
            Text("Varun Agarwal").fontWeight(.light).font(.system(size:24))
            Divider()
            Text("Hi y'all! I'm a freshman at Stanford from Houston, Texas, with a keen interest in biomedical tech. Outside of academics, you can catch me playing basketball and table tennis, breakdancing, or reading among other things! Check out my favorite author below:").fontWeight(.light).font(.system(size:14)).padding().animation(.easeInOut(duration:1.2)).minimumScaleFactor(0.9)
        
            let colors = [Color.blue, Color.red]
            
            Link(destination: URL(string: "https://www.brandonsanderson.com/books-and-art/#cosmere")!) {
                HStack {
                    Image(systemName: "paperplane")
                    Text("Visit Site").fontWeight(.semibold)
                }
            }.padding().foregroundColor(Color.white).background(LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)).cornerRadius(35)
            
        }.padding(5)
    }
}

struct VarunAgarwal_Previews: PreviewProvider {
    static var previews: some View {
        VarunAgarwal()
    }
}
