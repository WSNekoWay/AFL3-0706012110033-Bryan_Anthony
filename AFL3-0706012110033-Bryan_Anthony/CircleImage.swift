//
//  CircleImage.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 12/04/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
          Image("guardian")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                  Circle().stroke(.white, lineWidth: 4)
              }
            .shadow(radius: 7)
              
      }}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
