//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by MacBook Pro on 18/04/23.
//

import SwiftUI

//this is for setting in the mac app so user can  show their preference
struct LandmarkSettings: View {
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium

    var body: some View {
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
