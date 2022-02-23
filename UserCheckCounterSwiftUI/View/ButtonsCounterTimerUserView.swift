//
//  ButtonsCounterTimerUserView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct ButtonsCounterTimerUserView: View {
    @EnvironmentObject var user: UserManager
    @ObservedObject var timer: TimerCounter
    
    
    var body: some View {
        HStack {
            Button(timer.titleButton) { timer.startTimer() }
            .frame(width: 150, height: 50)
            .font(.title2)
            .foregroundColor(.black)
            .background(timer.titleButton == "Wait ..." ? .gray : .red)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.gray, lineWidth: 2)
            )
            
            Spacer()
            
            Button("Log Off") { logOff() }
            .frame(width: 150, height: 50)
            .font(.title2)
            .foregroundColor(.black)
            .background(.green)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.gray, lineWidth: 2)
            )
        }
        .padding()
    }
}

extension ButtonsCounterTimerUserView {
    private func logOff() {
        UserDefaults.standard.removeObject(forKey: "User")
        user.isRegister.toggle()
        user.name = ""
    }
}


