//
//  PhotoView.swift
//  Assignment One
//
//  Created by Ines Chami on 1/25/21.
//

import SwiftUI

struct PhotoView: View {
    let fileNames: [String] = ["perou1", "perou3", "morocco1", "lisboa2"]
    var body: some View {
        VStack {
            HStack {
                Text("Photography")
                    .font(.title2)
                    .padding()
            }
            ForEach(fileNames, id: \.self) { filename in
                Image(filename)
                    .resizable()
                    .frame(width: 200.0,height:200)
                    .shadow(radius: 7)
                    .padding(.bottom, 30)
                Spacer()
            }
        }
    }
}


struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
