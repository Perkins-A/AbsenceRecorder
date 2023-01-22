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
    let birthday: Date
    
    init(forename: String, surname: String, date: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = date
    }
}
