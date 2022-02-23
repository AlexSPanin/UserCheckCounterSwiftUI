//
//  RegisteredUserView.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import SwiftUI

struct RegisteredUserView: View {
    @State private var user = "Panin"
    @State private var count = 3
    @State private var titleButton = "Start"
    
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 20)
            Text("Hello! \(user)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer(minLength: 10)
            Text("\(count)")
                .font(.title)
                .bold()
            Spacer(minLength: 20)
            HStack {
                Spacer()
                Button(titleButton) {}
                .foregroundColor(.black)
                .background(.red)
                
           Spacer()
                Button("Log Off") {}
                .foregroundColor(.black)
                .background(.green)
                Spacer()
            }
            
            Spacer()
        }
       
    }
}

struct RegisteredUserView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        RegisteredUserView()
        }
    }
}
