//
//  ContentView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct StarterView: View {
   
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimerCounter()
    
    var body: some View {
        Group {
            if checkUserDefaults() {
                CounterTimerUserView(timer: timer)
            } else {
                RegisterUser(timer: timer)
            }
        }
    }
}

extension StarterView {
    private func checkUserDefaults() -> Bool {
        if !user.isRegister {
            if let name = UserDefaults.standard.string(forKey: "User"), !name.isEmpty {
                user.name = name
                user.isRegister.toggle()
            }
        }
        return user.isRegister
    }
}

