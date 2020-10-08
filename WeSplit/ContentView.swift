//
//  ContentView.swift
//  WeSplit
//
//  Created by Vincent He on 2020-10-08.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        Form{
            TextField("Enter Your Name", text: $name) // Enter the name, $name reference
            Text("Hello  \(name) ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
