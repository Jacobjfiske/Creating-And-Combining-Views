//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jacob fiske on 8/25/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray,lineWidth: 4)
            }
            .shadow(radius: 7)

    
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
