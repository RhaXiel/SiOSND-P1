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
    @Published var playingState: PlayingState! = .notPlaying
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
    @Published var mustShowAlert : Bool = false
    @Published var alertMessage : AlertMessage? = nil
    var showAlert: Bool{
        get {
            return self.alertMessage != nil
        }
    }
}
