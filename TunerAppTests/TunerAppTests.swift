//
//  TunerAppTests.swift
//  TunerAppTests
//
//  Created by Khemaney, Akshay (SPH) on 20/09/2021.
//

import XCTest
@testable import TunerApp

class TunerAppTests: XCTestCase {

    func testConvertFrequencyToNoteReturnsCorrectNote() throws {
        let pitch = Pitch()
        pitch.updateValues(196)
        
        XCTAssertEqual(pitch.note, "G")
    }
    
    func testConvertFrequencyToNoteReturnsCorrectOctave() throws {
        let pitch = Pitch()
        pitch.updateValues(196)
        
        XCTAssertEqual(pitch.octave, 3)
    }

}
