//
//  ContentView.swift
//  MacLandmarks
//
//  Created by MacBook Pro on 18/04/23.
//

import SwiftUI
//this is the view for macos application
struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
