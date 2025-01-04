//
//  ContentView.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
