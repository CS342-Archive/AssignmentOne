//
//  TeacherList.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct TeacherList: View {
    
    let teachers = TeacherViewModel().teachers
    
    var body: some View {
        VStack {
            List {
                Section(){
                    ForEach(teachers.indices){ i in
                        if let urlString = teachers[i].url,
                           let url = URL(string: urlString){
                            Link(destination: url){
                                TeacherItem(teacher: teachers[i])
                            }
                        } else {
                            TeacherItem(teacher: teachers[i])
                        }
                    }
                }
            }
        }.navigationBarTitle("Teaching Team")
    }
}

struct TeacherList_Previews: PreviewProvider {
    static var previews: some View {
        TeacherList()
    }
}
