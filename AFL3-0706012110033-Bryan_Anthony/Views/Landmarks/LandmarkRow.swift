//
//  LandmarkRow.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 12/04/23.
//

import SwiftUI
//this struct is used to show landmark data in a row
struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
                Text(landmark.park)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
        .padding(.vertical, 4)
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
