//
//  recipinderApp.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

@main
struct recipinderApp: App {
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            HomeView()
        }.onChange(of: scenePhase, perform: { (newScenePhase) ->() in
            switch newScenePhase {
            case .background:
                print("background")
            case .active:
                print("active")
            case .inactive:
                print("inactive")
            @unknown default:
                print("unknown")
            }
        }
        )
    }
}
