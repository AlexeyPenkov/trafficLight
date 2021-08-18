//
//  trafficLightState.swift
//  trafficLight
//
//  Created by Алексей Пеньков on 18.08.2021.
//

import Foundation

protocol TrafficLightState {
    var isComleted: Bool { get }
    
    func begin()
    
//    func changeLight()
}
