//
//  CircleImage.swift
//  Collection
//
//  Created by Frédéric Fréville on 14/11/2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        image
            .frame(width: width, height: height)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("stitch-tradition"),
        width: 100, height: 100)
    }
}
