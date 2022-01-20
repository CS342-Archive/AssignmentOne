//
//  Team.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import Foundation

enum Team: String, CaseIterable, Identifiable {
    
    var id: Self { self }
    
    case choir = "CHOIR"
    case budi = "BUDI"
    case activate = "Activate"
    case gaitmate = "GaitMate"
    case vasctrac2 = "VascTrac2"
}
