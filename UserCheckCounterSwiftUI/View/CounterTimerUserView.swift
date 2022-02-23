//
//  RegisteredUserView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct CounterTimerUserView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimerCounter()
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 30)
            
            Text("Hello! \(user.name)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer(minLength: 10)
            
            Text("\(timer.counter)")
                .font(.title)
                .fontWeight(.bold)
            Spacer(minLength: 40)
            
            ButtonsCounterTimerUserView(timer: timer)
            Spacer(minLength: 200)
        }
    }
}






