//
//  ContentView.swift
//  Shared
//
//  Created by RhaXiel on 12/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.green)
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                Spacer()
                Text("Description")
                    .font(.subheadline)
                
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
