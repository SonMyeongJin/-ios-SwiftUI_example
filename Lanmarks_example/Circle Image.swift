//
//  Circle Image.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/2/25.
//

import SwiftUI

struct Circle_Image: View {
    var body: some View {
        Image("3d-view-sun-sky-from-room")
            .resizable()
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
             .shadow(radius: 7)
    }
}

#Preview {
    Circle_Image()
}
