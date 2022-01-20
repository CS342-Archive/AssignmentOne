//
//  Teacher.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import Foundation

struct Teacher {
    
    public static var allTeachers: [(name: String, photo: String)] {
        [
            ("Oliver Aalami", ""),
            ("Vishnu Ravi", ""),
            ("Surabhi Mundada", ""),
            ("Varun Shenoy", ""),
            ("Santiago Gutierrez", ""),
            ("Mike Hittle", "")
        ].sorted(by: {$0.name < $1.name})
    }
    
}
