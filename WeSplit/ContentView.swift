//
//  ContentView.swift
//  WeSplit
//
//  Created by Vincent He on 2020-10-08.
//

import SwiftUI

struct ContentView: View {
    let students = ["Vincent", "Bosco", "Luck", "Steven"]
    @State private var selectedStudent = 0

    var body: some View {
        VStack{
            Picker("Select Your Student", selection: $selectedStudent){
                ForEach(0 ..< students.count){ number in
                    Text(self.students[number])
                }
            }
            Text("Hello \(self.students[self.selectedStudent])")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
