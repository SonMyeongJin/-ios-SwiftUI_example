//
//  Lanmarks_exampleApp.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/1/25.
//

import SwiftUI

@main
struct Lanmarks_exampleApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
