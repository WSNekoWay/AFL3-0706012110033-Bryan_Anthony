//
//  CategoryHome.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI
//This struct give view of category home
struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                //This code take data from the modelData categories and it is sorted
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                Text(key)
                    }
                }
                .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
