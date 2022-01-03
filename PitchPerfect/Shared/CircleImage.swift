//
//  CircleImage.swift
//  PitchPerfect
//
//  Created by RhaXiel on 24/12/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("SampleImage")
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
