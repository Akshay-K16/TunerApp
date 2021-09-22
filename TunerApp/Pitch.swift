//
//  Pitch.swift
//  TunerApp
//
//  Created by Khemaney, Akshay (SPH) on 22/09/2021.
//

import Foundation

class Pitch {
    var frequency: Double = 0.0
    var note: String = ""
    var octave: Int = 0
    let notes = ["A", "A Sharp", "B", "C", "C Sharp", "D", "D Sharp", "E", "F", "F Sharp", "G", "G Sharp"]
    
    private func convertFrequencytoNote() {
        let keyNumber = round(12*log2(self.frequency/440)+49)
        
        let x = (keyNumber+2)/12
        if (x.truncatingRemainder(dividingBy: 1.0)) >= 0.5 {
            self.octave = Int(ceil(x))
        } else {
            self.octave = Int(floor(x))
        }
        
        if octave <= 0 {
            octave = 0
        }
        
        self.note = notes[(Int(keyNumber) % 12)-1]
    }

    func updateValues(_ freq: Double) {
        frequency = freq
        self.convertFrequencytoNote()
    }
}
