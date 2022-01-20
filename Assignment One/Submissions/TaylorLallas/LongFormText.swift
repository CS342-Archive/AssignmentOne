//
//  LongFormText.swift
//  Assignment One
//
//  Created by Taylor  Lallas on 1/11/22.
//

import SwiftUI

struct LongFormText: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Hey, I'm Taylor!")
                .font(.headline)
            Text("I'm a coterminal master's student in Computer Science from Los Angeles, California. My concentration is in Human-Computer Interaction. During my 4 years of undergrad, I was a member of the Stanford Women's Tennis team. In my free time, you can find me spending time outdoors, baking, and reading.")
        }.padding(.leading)
            .padding(.trailing)
    }
}

struct LongFormText_Previews: PreviewProvider {
    static var previews: some View {
        LongFormText()
    }
}
