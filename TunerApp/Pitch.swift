//
//  Pitch.swift
//  TunerApp
//
//  Created by Khemaney, Akshay (SPH) on 22/09/2021.
//

import Foundation

class Pitch {
    static func convertFrequencytoNote(_ frequency: Double) -> (String, Int) {
        let notes = ["A", "A Sharp", "B", "C", "C Sharp", "D", "D Sharp", "E", "F", "F Sharp", "G", "G Sharp"]
        // Converts the Frequency into a Key Number
        let keyNumber = round(12*log2(frequency/440)+49)
        var note = ""
        var octave = 0
        
        // Uses the Key Number to Find the Octave
        let x = (keyNumber+2)/12
        if (x.truncatingRemainder(dividingBy: 1.0)) >= 0.5 {
            octave = Int(ceil(x))
        } else {
            octave = Int(floor(x))
        }
        
        if octave <= 0 {
            octave = 0
        }
        
        // Uses the KeyNumber to index the notes array and return a note name
        let index = (Int(keyNumber) % 12)-1
        if index < 0 {
            note = notes[notes.count-1]
        } else {
            note = notes[index]
        }
        
        return (note, octave)
    }
}
