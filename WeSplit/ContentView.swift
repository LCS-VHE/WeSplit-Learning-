//
//  ContentView.swift
//  WeSplit
//
//  Created by Vincent He on 2020-10-08.
//

import SwiftUI

struct ContentView: View {
    let students = ["Vincent", "Bosco", "Luck", "Steven"]
    @State private var selectedStudent = "Vincent"
    
    var body: some View {
        
        Picker("Select Your Student", selection: $selectedStudent){
            ForEach(0 ..< students.count){ number in
                Text(self.students[number])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
