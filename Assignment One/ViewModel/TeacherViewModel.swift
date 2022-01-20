//
//  TeacherViewModel.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

class TeacherViewModel {
    
    var teachers: [Teacher]
    
    init(){
        self.teachers = [
            Teacher(name: "Oliver Aalami", photo: "OliverAalami", title: "Director", url: "https://med.stanford.edu/profiles/oliver-aalami?tab=bio"),
            Teacher(name: "Vishnu Ravi", photo: "VishnuRavi", title: "Lead Architect", url: "https://vishnu.io"),
            Teacher(name: "Surabhi Mundada", photo: "SurabhiMundada", title: "TA", url: ""),
            Teacher(name: "Varun Shenoy", photo: "VarunShenoy", title: "Co-Instructor", url: "https://varunshenoy.com"),
            Teacher(name: "Santiago Gutierrez", photo: "SantiagoGutierrez", title: "Co-Instructor", url: ""),
            Teacher(name: "Mike Hittle", photo: "MikeHittle", title: "Co-Instructor", url: "https://profiles.stanford.edu/michael-hittle")
        ]
    }
}
