//
//  RegisteredUserView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct RegisteredUserView: View {
 //   @ObservedObject var timer: TimerCounter
    
    @State private var user = "Panin"
 //   @State private var count = 3
 //   @State private var titleButton = "Start"
    
    @StateObject private var timer = TimerCounter()
    
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 20)
            Text("Hello! \(user)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
    
            Text("\(timer.counter)")
                .font(.title)
                .fontWeight(.bold)
            Spacer(minLength: 20)
            
           ButtonsCounterView(timer: timer)
            
            Spacer()
        }
       
    }
}


