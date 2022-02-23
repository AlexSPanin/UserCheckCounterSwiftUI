//
//  UserCheckCounterSwiftUIApp.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI
@main
struct UserCheckCounterSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
