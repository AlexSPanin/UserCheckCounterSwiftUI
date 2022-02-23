//
//  TimerCounter.swift
//  UserCheckCounterSwiftUI
//
//  Created by Александр Панин on 23.02.2022.
//

import Foundation
import Combine

class TimerCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimerCounter, Never>()
    
    var countStarted = 5
    var counter = 5
    var timer: Timer?
    var titleButton = "Start"
    
    func startTimer() {
        
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateTimer),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTaped()
    }
    
    func setCounter(_ counter: Int) {
        self.counter = counter
        countStarted = counter
    }
    
    @objc private func updateTimer() {
        if counter > 0 {
            counter -= 1
        } else {
            endTimer()
            titleButton = "Reset"
        }
        objectWillChange.send(self)
    }
    
    private func endTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTaped() {
        if titleButton == "Reset" {
            counter = countStarted
            titleButton = "Start"
        } else {
            titleButton = "Wait ..."
        }
        objectWillChange.send(self)
    }
}

