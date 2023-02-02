//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 22/01/2023.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(divisions: Division.examples)
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
