//
//  GreenLightInputState.swift
//  trafficLight
//
//  Created by Алексей Пеньков on 18.08.2021.
//

import UIKit

class ColorLightInputState: TrafficLightState {
    var isComleted: Bool = false
    
    public let trafficLight: TrafficLightColors
    
    private(set) weak var viewController: ViewController?
    
    init(trafficLight: TrafficLightColors, viewController: ViewController) {
        self.viewController = viewController
        self.trafficLight = trafficLight
    }
    
    func begin() {
        
        switch trafficLight {
        case .red:
            viewController?.greenLightView.alpha = 0.3
            viewController?.orangeLightView.alpha = 0.3
            viewController?.redLightView.alpha = 1
        case .redOrange:
            viewController?.greenLightView.alpha = 0.3
            viewController?.orangeLightView.alpha = 1
            viewController?.redLightView.alpha = 1
        case .orange:
            viewController?.greenLightView.alpha = 0.3
            viewController?.orangeLightView.alpha = 1
            viewController?.redLightView.alpha = 0.3
        case .green:
            viewController?.greenLightView.alpha = 1
            viewController?.orangeLightView.alpha = 0.3
            viewController?.redLightView.alpha = 0.3
        }
        viewController?.directActionLabel.text = setDirectActionName(trafficLight: trafficLight)
        isComleted = true
    }
    
    
    private func setDirectActionName(trafficLight: TrafficLightColors) -> String {
        
        switch trafficLight {
        case .red:
            return "Стой! Горит красный"
        case .orange, .redOrange:
            return "Приготовься"
        case .green:
            return "GOGOGO"
       }
    }
}
