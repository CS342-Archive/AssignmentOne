//
//  TeacherItem.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct TeacherItem: View {
    var teacher: Teacher
    
    var body: some View {
        HStack{
            Image(teacher.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 5)
                .padding(10)
            Spacer().frame(width: 10)
            
            HStack {
                VStack(alignment: .leading){
                    Text(teacher.name).font(.title3).foregroundColor(.black)
                    Text(teacher.title).font(.system(size: 20)).foregroundColor(.gray)
                }
                Spacer()
                VStack(alignment: .trailing){
                    if(teacher.url != ""){
                        Image(systemName: "link")
                    }
                }
            }
        }
    }
}
