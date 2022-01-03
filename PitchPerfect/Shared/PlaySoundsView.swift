//
//  PlaySoundsView.swift
//  PitchPerfect
//
//  Created by RhaXiel on 3/1/22.
//

import SwiftUI

struct PlaySoundsView: View {
    var recordedAudioURL: URL!
    var body: some View {
        VStack{
            HStack(){
                Button(action: {
                    
                })
                {
                    Image("Slow")
                }
                .frame(maxWidth: .infinity)
                Button(action: {
                    
                })
                {
                    Image("Fast")
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxHeight: .infinity)
            HStack(){
                Button(action: {
                    
                })
                {
                    Image("HighPitch")
                }
                .frame(maxWidth: .infinity)
                Button(action: {
                    
                })
                {
                    Image("LowPitch")
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxHeight: .infinity)
            HStack(){
                Button(action: {
                    
                })
                {
                    Image("Echo")
                }
                .frame(maxWidth: .infinity)
                Button(action: {
                    
                })
                {
                    Image("Reverb")
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxHeight: .infinity)
            Button(action: {
                
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
    }
}

struct PlaySoundsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaySoundsView()
.previewInterfaceOrientation(.portrait)
    }
}
