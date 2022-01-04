//
//  PlaySoundsView.swift
//  PitchPerfect
//
//  Created by RhaXiel on 3/1/22.
//

import SwiftUI
import AVFoundation

struct PlaySoundsView: View {
    var recordedAudioURL: URL!
    @ObservedObject var audioPlayer = PlaySoundsViewController()
     
    enum ButtonType: Int {
        case slow = 0, fast = 1, chipmunk = 2, vader = 3, echo = 4, reverb = 5
    }
    
    var body: some View {
        VStack{
            HStack(){
                Button(action: {
                    playSoundForButton(ButtonType.slow)
                })
                {
                    Image("Slow")
                }
                .frame(maxWidth: .infinity)
                .disabled(audioPlayer.isPlaying)
                
                Button(action: {
                    playSoundForButton(ButtonType.fast)
                })
                {
                    Image("Fast")
                }
                .frame(maxWidth: .infinity)
                .disabled(audioPlayer.isPlaying)
            }
            .frame(maxHeight: .infinity)
            HStack(){
                Button(action: {
                    playSoundForButton(ButtonType.chipmunk)
                })
                {
                    Image("HighPitch")
                }
                .frame(maxWidth: .infinity)
                .disabled(audioPlayer.isPlaying)
                
                Button(action: {
                    playSoundForButton(ButtonType.vader)
                })
                {
                    Image("LowPitch")
                }
                .frame(maxWidth: .infinity)
                .disabled(audioPlayer.isPlaying)
            }
            .frame(maxHeight: .infinity)
            HStack(){
                Button(action: {
                    playSoundForButton(ButtonType.echo)
                })
                {
                    Image("Echo")
                }
                .frame(maxWidth: .infinity)
                .disabled(audioPlayer.isPlaying)

                Button(action: {
                    playSoundForButton(ButtonType.reverb)
                })
                {
                    Image("Reverb")
                }
                .frame(maxWidth: .infinity)
                .disabled(audioPlayer.isPlaying)
            }
            .frame(maxHeight: .infinity)
            Button(action: {
                stopButtonPressed()
            }){
                Image("Stop")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            .frame(maxHeight: .infinity)
            //Text("Play sounds")
            //Text(recordedAudioURL?.absoluteString ?? "Nada")
        }
        .navigationTitle("Pitch Perfect Recorded")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: assignURL)//audioPlayer.setupAudio)
    }
    
    func assignURL () {
        audioPlayer.recordedAudioURL = self.recordedAudioURL
        print(recordedAudioURL?.absoluteString ?? "Vacio")
        audioPlayer.setupAudio()
    }
    
    func playSoundForButton(_ buttonType: ButtonType){
        print("Play sound for button pressed for value \(buttonType)")
        switch(buttonType){
        case .slow:
            audioPlayer.playSound(rate: 0.5)
        case .fast:
            audioPlayer.playSound(rate: 1.5)
        case .chipmunk:
            audioPlayer.playSound(pitch: 1000)
        case .vader:
            audioPlayer.playSound(pitch: -1000)
        case .echo:
            audioPlayer.playSound(echo: true)
        case .reverb:
            audioPlayer.playSound(reverb: true)
        }
        audioPlayer.configureUI(.playing)
    }
    
    func stopButtonPressed(){
        print("Stop audio button pressed")
        audioPlayer.stopAudio()
    }
    
}

struct PlaySoundsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaySoundsView()
.previewInterfaceOrientation(.portrait)
    }
}
