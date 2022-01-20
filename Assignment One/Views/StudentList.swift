//
//  StudentList.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct StudentList: View {
    let students = StudentViewModel().students
    
    var body: some View {
        VStack {
            List {
                ForEach(Team.allCases){ team in
                    Section(header: SectionHeader(teamName: team.rawValue)){
                        ForEach(students.indices){ i in
                            if(team.rawValue == students[i].team.rawValue){
                                NavigationLink(destination: students[i].view){
                                    StudentItem(student: students[i])
                                }
                            }
                        }
                    }
                }
            }.navigationBarTitle("Students")
        }
    }
}

struct StudentList_Previews: PreviewProvider {
    static var previews: some View {
        StudentList()
    }
}
