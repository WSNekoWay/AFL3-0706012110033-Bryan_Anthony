//
//  CategoryRow.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI
//This show all CategoryItem based on the category in one slideable row
struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                                               } label: {
                                                   CategoryItem(landmark: landmark)
                                               }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(3))
        )
    }
}
