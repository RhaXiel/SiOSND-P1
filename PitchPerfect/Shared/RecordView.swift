//
//  RecordView.swift
//  PitchPerfect
//
//  Created by RhaXiel on 2/1/22.
//

import SwiftUI
import AVFoundation


struct RecordView: View {
    @State private var recording = false
    //@State private var currentPageView : PageView = .record
    @ObservedObject var audioRecorder = RecordSoundsViewController()
    //@EnvironmentObject var finishedRecording: Bool
    
    //@ViewBuilder
    var body: some View {
        NavigationView{
        VStack {
            Button(action: {
                recording.toggle()
                self.audioRecorder.recordAudio()
            })
            {
                Image("Record")
            }
            .disabled(recording)
            if recording {
                Text("Recording in progress")
            }
            else{
                Text("Tap to Record")
            }
            Group{
                Button(action: {
                    recording = false
                    self.audioRecorder.stopRecording()
                    print("stop button clicked")
                }){
                    Image("Stop")
                        .resizable()
                        .frame(width: 64, height: 64)
                }
                .disabled(!recording)
                NavigationLink(destination: PlaySoundsView(recordedAudioURL: self.audioRecorder.currentURL), isActive:
                                $audioRecorder.successfulRecording){
                    EmptyView()
                }.hidden()
            }
        }
        .navigationTitle("Pitch Perfect")
        .navigationBarTitleDisplayMode(.inline)
    }
        
    }
    
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
.previewInterfaceOrientation(.portrait)
    }
}
