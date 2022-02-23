//
//  UserManager.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}

