//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 22/01/2023.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    
    }
    
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            
            return absence
        }
    }
    
    #if DEBUG
    static func createDivision(code:String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            division.students.append(Student(forename: "Jeffery\(i)", surname: "Jenkins\(i)", birthday: Date()))
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vFJ-2", of: 10),
                           Division.createDivision(code: "vRU-4", of: 9)]
    #endif
    
    func displayDivision() -> String {
        var divisionDisplay = """
"""
        for student in students {
            divisionDisplay += """
\(student.forename) \(student.surname)
 
"""
        }
        
        return divisionDisplay
    }
    
}
