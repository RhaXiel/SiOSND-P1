//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by RhaXiel on 3/1/22.
//

import Foundation
import AVFoundation

class PlaySoundsViewController : NSObject, ObservableObject{
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    var playingState: PlayingState!
    var isPlaying: Bool {
        get {
            switch (self.playingState){
            case .playing:
                return true
            case .notPlaying:
                return false
            case .none:
                return false
            }
        }
    }
}
