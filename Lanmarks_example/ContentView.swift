//
//  ContentView.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Landmarks Rock")
                .font(.title)
                .foregroundStyle(Color.green)
            HStack {
                Text("Joshua Tree National park")
                    .font(.subheadline)
                Spacer()
                Text("South of Korea")
                    .font(.subheadline)
            }
        }.padding()
    }
}

#Preview {
    ContentView()
}
