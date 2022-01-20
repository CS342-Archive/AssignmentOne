//
//  TeacherList.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct TeacherList: View {
    
    let teachers = Teacher.allTeachers
    
    var body: some View {
        VStack {
            List {
                Section(){
                    ForEach(teachers.indices){ teacherIndex in
                        let teacher = teachers[teacherIndex]
                        Link(destination: (URL(string: teacher.url)!)){                        TeacherItem(name: teacher.name, photo: teacher.photo, title: teacher.title, url: teacher.url)
                        }
                    }
                }
            }
        }.navigationBarTitle("Your Teaching Team")
    }
}

struct TeacherList_Previews: PreviewProvider {
    static var previews: some View {
        TeacherList()
    }
}
