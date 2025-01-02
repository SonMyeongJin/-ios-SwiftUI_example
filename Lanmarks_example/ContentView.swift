//
//  ContentView.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height:300)
            
            Circle_Image()
                .offset(y: -130)
                .padding(.bottom, -130)
            
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
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }.padding()
            
            Spacer()
            
            
        }
    }
}

#Preview {
    ContentView()
}
