//
//  CircleImage.swift
//  Assignment One
//
//  Created by Taylor  Lallas on 1/11/22.
//

import SwiftUI
import UIKit

struct CircleImage: View {
    var body: some View {
            Image("profileSmall")
            .resizable()
            .scaledToFit()
            .frame(width: 125)
                .clipShape(Circle())
                .shadow(radius: 5)
                
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
