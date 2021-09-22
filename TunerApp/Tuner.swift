//
//  Tuner.swift
//  TunerApp
//
//  Created by Khemaney, Akshay (SPH) on 22/09/2021.
//

import Foundation
import AudioKit
import SoundpipeAudioKit
import AudioKitEX

class Tuner {
    let engine = AudioEngine()
    let mic: AudioEngine.InputNode
    let tracker: PitchTap!
    let silence: Fader
    let note = Pitch()

    init() {
        guard let input = engine.input else {
            fatalError()
        }
        
        self.mic = input
        self.silence = Fader(Fader(mic), gain: 0)
        engine.output = silence
        tracker = PitchTap(mic, handler: { (pitch, amp) in
            DispatchQueue.main.async {
//                self.note.updateValues(Double(pitch.first!))
                print(pitch)
            }
        })
    }
    
    func start() {
        do {
            try engine.start()
            tracker.start()
        } catch let error {
            print(error)
        }
    }
    
    func stop() {
        engine.stop()
    }
}
