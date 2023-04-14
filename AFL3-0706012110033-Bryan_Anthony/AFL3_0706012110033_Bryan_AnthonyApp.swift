//
//  AFL3_0706012110033_Bryan_AnthonyApp.swift
//  AFL3-0706012110033-Bryan_Anthony
//
//  Created by MacBook Pro on 12/04/23.
//

import SwiftUI
//This struct is the main and it shows contentview
@main
struct AFL3_0706012110033_Bryan_AnthonyApp: App {
    @StateObject private var modelData = ModelData()

       var body: some Scene {
           WindowGroup {
               ContentView()
                   .environmentObject(modelData)
           }
       }
}
