//
//  LandmarkCommands.swift
//  MacLandmarks
//
//  Created by MacBook Pro on 18/04/23.
//

import SwiftUI
//struct to add more command to the mac application
struct LandmarkCommands: Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark

    var body: some Commands {
        //hide and show sidebar
        SidebarCommands()
        //to add favorite using select and command
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
