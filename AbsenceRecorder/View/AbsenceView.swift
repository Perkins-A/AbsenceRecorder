//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 02/02/2023.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        List(division.students, id: \.self.forename) { student in
            AbsenceItem(studentAbsence:StudentAbsence(student:student))
        }
        
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
