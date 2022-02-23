//
//  RegisteredUserView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct CounterTimerUserView: View {
    @EnvironmentObject var user: UserManager
    @ObservedObject var timer: TimerCounter
    
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

extension CounterTimerUserView {
    private func setCount() -> Int {
        timer.setCounter(user.name.count)
        return timer.counter
    }
}


