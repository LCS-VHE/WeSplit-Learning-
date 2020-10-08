//
//  ContentView.swift
//  WeSplit
//
//  Created by Vincent He on 2020-10-08.
//

import SwiftUI

struct ContentView: View {
    @State private var checkout = ""
    @State private var tipindex = 2
    @State private var numofpeople = 2
    
    var tipoptions = [10,15, 20, 25, 0]
    var body: some View {
        Form{
            Section{
                TextField("Enter Amount: ", text: $checkout).keyboardType(.decimalPad) // Not using the full keyboard
            }
            Section{
                Text("Checkout Amount: \(checkout)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
