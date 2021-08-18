//
//  TrafficLight.swift
//  trafficLight
//
//  Created by Алексей Пеньков on 18.08.2021.
//

import Foundation

enum TrafficLightColors {
    case red, green, orange, redOrange
    var next: TrafficLightColors {
        switch self {
            case .red: return .redOrange
            case .redOrange: return .green
            case .green: return .orange
            case .orange: return .red
            
        }
    }
}
