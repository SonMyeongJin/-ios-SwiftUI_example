//
//  LandmarkList.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/2/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
               LandmarkRow(landmark: landmark)
           }
    }
}

#Preview {
    LandmarkList()
}
