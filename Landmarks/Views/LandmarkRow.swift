//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jacob fiske on 8/30/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 65, height: 65 )
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.gray,lineWidth: 1)
                }
                .shadow(radius: 1)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
