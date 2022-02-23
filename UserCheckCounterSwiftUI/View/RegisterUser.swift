//
//  RegisterUser.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct RegisterUser: View {
    @EnvironmentObject var user: UserManager
    @ObservedObject var timer: TimerCounter
    
    @State private var name = ""
    @State private var isCorrect = false
    
    var body: some View {
        VStack{
            
            HStack {
                TextField("Enter your name ...", text: $name)
                .onChange(of: name, perform: { newValue in isCorrect = newValue.count >= 3 })
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
                
                Text("\(name.count)")
                    .font(.title3)
                    .foregroundColor( isCorrect ? .green : .red)
            }
            .padding()
            
            Button(action: addUser ) {
                Image(systemName: "person.crop.circle.badge.checkmark")
                Text("OK")
            }
            .foregroundColor(isCorrect ? .green : .red)
        }
    }
}

extension RegisterUser {
    
    private func addUser() {
        if !name.isEmpty {
            user.name = name
            timer.setCounter(name.count)
            UserDefaults.standard.set(name, forKey: "User")
            user.isRegister.toggle()
            print(user.isRegister)
        }
    }
    
    
}

