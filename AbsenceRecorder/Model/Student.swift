//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 22/01/2023.
//

import Foundation

class Student: Codable {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(forename:"Jerry", surname: "Smith", birthday: Date())
    static let examples = [example, Student(forename:"Jeff", surname: "Jenkins", birthday: Date())]
    #endif
}
