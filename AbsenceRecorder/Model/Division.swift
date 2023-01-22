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
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code:String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            division.students.append(Student(forename: "Jeffery\(i)", surname: "Jenkins\(i)", date: "4th of May, 2005"))
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
