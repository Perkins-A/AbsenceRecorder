//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Perkins, Alexander (ABH) on 02/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
        
    }
    
    func getFilePath(fileName file: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
        
    }
    
    func loadFromFile() {
        // get url of the file you want to load from
        let url = getFilePath(fileName: "divisions.json")
        
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        // create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            // convert encoded json objects into string
            if let json = String(data: encoded, encoding: .utf8) {
                // create the file path
                let url = getFilePath(fileName: "divisions.json")
                
                do {
                    // write json string to file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
