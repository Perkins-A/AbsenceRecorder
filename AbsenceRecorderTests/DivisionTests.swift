//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Perkins, Alexander (ABH) on 03/02/2023.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {


    func testGetAbsenceDivisionWithAbsenceOnThatDateReturnsAbsence() throws {
        // arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateTomorrow = Date(timeIntervalSinceNow: 23400502353214)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        // act
        let actual = division.getAbsence(for: dateLaterToday)
        
        // assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
    }
    
    func testCreateAbsenceReturnsTodaysAbsenceIfItExists() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let absenceToday = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absenceToday)
        
        //act
        let actualToday = division.createAbsenceOrGetExistingIfAvailable(for: dateToday)

        
        XCTAssertEqual(actualToday.takenOn, absenceToday.takenOn)
    }
    
    func testCreateAbsenceReturnsAbsenceForGivenDate() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateAnytime = Date(timeIntervalSinceNow: 23400502353214)
        let absenceAnytime = Absence(date: dateAnytime, students: Student.examples)
        
        //act
        let actualAnytime = division.createAbsenceOrGetExistingIfAvailable(for: dateAnytime)
        
        XCTAssertEqual(actualAnytime.takenOn, absenceAnytime.takenOn)
    }

    
    


}
