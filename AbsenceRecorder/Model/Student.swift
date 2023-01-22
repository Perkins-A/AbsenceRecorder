//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 22/01/2023.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: String
    
    init(forename: String, surname: String, date: String) {
        self.forename = forename
        self.surname = surname
        self.birthday = date
    }
}
