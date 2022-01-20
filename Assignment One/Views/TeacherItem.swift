//
//  TeacherItem.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct TeacherItem: View {
    var name: String
    var photo: String
    
    var body: some View {
        HStack{
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 5)
                .padding(10)
            Spacer().frame(width: 10)
            Text(name).font(.title3)
        }
    }
}
