//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by RhaXiel on 2/1/22.
//

import Foundation
import AVFoundation

class RecordSoundsViewController : NSObject, ObservableObject, AVAudioRecorderDelegate {
    @Published var successfulRecording = false
    @Published var currentlyRecording = false
    @Published var currentURL : URL!
    
    var audioRecorder: AVAudioRecorder!
    
    func recordAudio(){
        let dirPath = NSSearchPathForDirectoriesInDomains(
            .documentDirectory,
            .userDomainMask,
            true
        )[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        currentURL = filePath
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    func stopRecording(){
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        successfulRecording = flag
        print("Finished recording")
    }
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        successfulRecording = false
        print("Error while recording")
    }
    
}
