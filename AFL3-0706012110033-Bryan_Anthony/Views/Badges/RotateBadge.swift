//
//  RotateBadge.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI
//this struct make a view of badge that rotate with a little angle
struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
