//
//  GlobalStatesAndToolbarApp.swift
//  GlobalStatesAndToolbar
//
//  Created by Luis Esteban Haro on 11/05/23.
//

import SwiftUI

@main
struct GlobalStatesAndToolbarApp: App {
    let  myModel = MyModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(myModel)
        }
    }
}
