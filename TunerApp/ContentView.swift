//
//  ContentView.swift
//  TunerApp
//
//  Created by Khemaney, Akshay (SPH) on 20/09/2021.
//

import SwiftUI

struct ContentView: View {
    let tuner = Tuner()
    
    var body: some View {
        VStack {
            Button("Start") {
                print("Started")
            }
            Button("Stop") {
                print("Stopped")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
