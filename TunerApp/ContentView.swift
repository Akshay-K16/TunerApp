//
//  ContentView.swift
//  TunerApp
//
//  Created by Khemaney, Akshay (SPH) on 20/09/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var tuner = Tuner()

    var body: some View {
        VStack {
            Button("Start") {
                tuner.start()
            }
            Button("Stop") {
                tuner.stop()
                print("Stopped")
            }
            Text("Note: \(tuner.note)\(tuner.octave)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
