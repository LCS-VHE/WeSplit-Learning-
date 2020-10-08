//
//  ContentView.swift
//  WeSplit
//
//  Created by Vincent He on 2020-10-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form{
            ForEach(0..<100){number in
                Text("Row \($0) ") // Closures using the for each loop in swiftui
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
