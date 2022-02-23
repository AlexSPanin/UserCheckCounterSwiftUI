//
//  RegisterUser.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct RegisterUser: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack{
            TextField("Enter your name ...", text: $name)
                .multilineTextAlignment(.center)
            
            Button(action: addUser ) {
                Image(systemName: "person.crop.circle.badge.checkmark")
                Text("OK")
            }
        }
    }
}

extension RegisterUser {
    private func addUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

