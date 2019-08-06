//
//  CircleImage.swift
//  Landmark
//
//  Created by Vatsal Kulshreshtha on 06/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
          Image("vatsalPic")
            .resizable()
            .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                     .clipShape(Circle())
                     .overlay(Circle().stroke(Color.white, lineWidth: 2))
                     .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
