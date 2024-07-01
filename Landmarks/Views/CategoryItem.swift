//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Jacob fiske

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .center) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                //.overlay(Rectangle().stroke(.gray, lineWidth: 1.5))
                .cornerRadius(30)
                .shadow(radius: 3)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
            
//                .resizable()
//                .frame(width: 155, height: 155)
//                .cornerRadius(5)
//            Text(landmark.name)
//                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryItem(
            landmark: landmarks[0]
        )
    }
}
