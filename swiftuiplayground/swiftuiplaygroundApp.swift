//
//  swiftuiplaygroundApp.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/04/03.
//

import SwiftUI

@main
struct swiftuiplaygroundApp: App {
    
    @Environment(\.scenePhase) var scenePhase

    init() {
        firstExec()
    }
    
    var body: some Scene {
        WindowGroup {
            ListMainView()
        }.onChange(of: scenePhase) { (phase) in
            switch phase {
                // app lifecycle
            case .active:
                print("It's active")
            case .inactive:
                print("It's inactive")
            case .background:
                print("It's in background")
            @unknown default:
                fatalError("somethins went wrong")
            }
            
        }
    }
    
    func firstExec() {
        print("first to be executed")
    }
}
