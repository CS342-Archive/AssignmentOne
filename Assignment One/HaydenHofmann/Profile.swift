//
//  Profile.swift
//  Assignment One
//
//  Created by Hayden hofmann on 1/10/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        Image("HaydenHofmann").resizable()
            .scaledToFit()
            .frame(width: 400, height: 200)
            .clipShape(Circle())

    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
