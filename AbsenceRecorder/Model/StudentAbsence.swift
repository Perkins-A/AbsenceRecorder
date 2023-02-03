//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 03/02/2023.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename:"Jerry", surname: "Smith", birthday: Date()))
    #endif
}
