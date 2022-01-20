//
//  StudentItem.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct StudentItem: View {
    
    var student: Student
    
    var body: some View {
        HStack{
            Image(student.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 5)
                .padding(10)
            Spacer().frame(width: 10)
            Text(student.name).font(.title3)
        }
    }
}
