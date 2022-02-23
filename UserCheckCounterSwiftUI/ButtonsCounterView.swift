//
//  ButtonsCounterView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct ButtonsCounterView: View {
    @ObservedObject var timer: TimerCounter
    
    var body: some View {
        
        HStack {
            Button(action: timer.startTimer) {
                Text("\(timer.titleButton)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .frame(width: 150, height: 50, alignment: .leading)
            .background(.red)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            Spacer()
            Button("Log Off") {}
            frame(width: 150, height: 50, alignment: .trailing)
                .foregroundColor(.black)
                .background(.green)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.black, lineWidth: 2)
                )
        }
        
   
    
    }
}

