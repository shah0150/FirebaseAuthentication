//
//  FirebaseAuthenticationApp.swift
//  FirebaseAuthentication
//
//  Created by Adesh Shah on 2023-11-13.
//

import SwiftUI
import Firebase

@main
struct FirebaseAuthenticationApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ListView().environmentObject(DataManager())
            ContentView()
        }
    }
}
