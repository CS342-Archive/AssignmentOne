//
//  StudentList.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct StudentList: View {
    let students = Student.allStudents
    
    var body: some View {
        VStack {
            List {
                ForEach(Team.allCases){ team in
                    Section(header: SectionHeader(teamName: team.rawValue)){
                        ForEach(students.indices){ student in
                            if(team.rawValue == students[student].team.rawValue){
                                NavigationLink(destination: students[student].view){
                                    StudentItem(name: students[student].name, photo: students[student].photo)
                                }
                            }
                        }
                    }
                }
            }.navigationBarTitle("Your Classmates")
        }
    }
}

struct StudentList_Previews: PreviewProvider {
    static var previews: some View {
        StudentList()
    }
}
