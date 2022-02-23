//
//  ButtonsCounterTimerUserView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct ButtonsCounterTimerUserView: View {
    @ObservedObject var timer: TimerCounter
    
    var body: some View {
        HStack {
        Button(action: timer.startTimer ) {
            Text(timer.titleButton)
                .font(.title2)
                .foregroundColor(.black)
        }
        .frame(width: 150, height: 50)
        .background(.red)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray, lineWidth: 2)
        )
        
            Spacer()
            
        Button("Log Off") {}
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


