//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Jacob fiske on 12/8/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: LandmarkDetail(landmark: modelData.landmarks[0])) {
                                    modelData.landmarks[0].image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 200)
                                        .clipped()
                                        .cornerRadius(30)
                                        .shadow(radius: 3)
                                        .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                                }
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
        .listStyle(PlainListStyle())
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
