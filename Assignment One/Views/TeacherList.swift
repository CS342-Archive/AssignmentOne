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
                Section(header: Text("Teaching Team")){
                    ForEach(teachers.indices){ teacher in
                        TeacherItem(name: teachers[teacher].name, photo: teachers[teacher].photo)
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
