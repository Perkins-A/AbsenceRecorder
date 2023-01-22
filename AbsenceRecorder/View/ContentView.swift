//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 22/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    private var divisions = Division.examples
    
    var body: some View {
        Text("\(divisions[1].displayDivision())")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
