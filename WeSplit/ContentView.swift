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
    @State private var numofpeople = 0
    
    var tipoptions = [10,15, 20, 25]
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Enter Amount: ", text: $checkout).keyboardType(.decimalPad) // Not using the full keyboard
                    
                    Picker("Number of people", selection: $numofpeople){ // This is a Index
                        ForEach(2..<100){ number in
                            Text("\(number)")
                        }
                    }
                }
                
                Section{
                    Picker("Pick Percent", selection: $tipindex){
                        ForEach(0 ..< tipoptions.count ){ num in
                            Text("Tip: \(self.tipoptions[num]) ") // Convert
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle()) // A Better looking Picker
                }
                Section{
                    Text("\(checkout) $")
                }
            }
        }
        .navigationBarTitle("We Split")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
