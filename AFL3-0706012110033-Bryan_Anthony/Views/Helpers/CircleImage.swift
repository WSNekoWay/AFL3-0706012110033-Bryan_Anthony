//
//  CircleImage.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 12/04/23.
//

import SwiftUI
//this struct show you an image with custom form
struct CircleImage: View {
    var image: Image

        var body: some View {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                
        }
    
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("guardian"))
    }
}
