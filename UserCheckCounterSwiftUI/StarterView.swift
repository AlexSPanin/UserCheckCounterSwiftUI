//
//  ContentView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
   
    var body: some View {
        Group {
            if user.isRegister {
                CounterTimerUserView()
            } else {
                RegisterUser()
            }
        }
    }
}

