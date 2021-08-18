//
//  ViewController.swift
//  trafficLight
//
//  Created by Алексей Пеньков on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var directActionLabel: UILabel!
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var orangeLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    let flag = true
    private var currentState: TrafficLightState? {
        didSet {
            if let currentState = currentState {
                currentState.begin()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redLightView.layer.cornerRadius = redLightView.frame.size.width/2
        redLightView.clipsToBounds = true
        orangeLightView.layer.cornerRadius = orangeLightView.frame.size.width/2
        redLightView.clipsToBounds = true
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width/2
        greenLightView.clipsToBounds = true
        redColorLightTurn()
        
//        while flag {
//            redColorLightTurn();
//            sleep(3)
//            if ((self.currentState?.isComleted) != nil) {
//                self.nextColorLightTurn()
//                sleep(2)
//            }
//
//        }
       
    }

    private func redColorLightTurn() {
        let redLight: TrafficLightColors = .red
        currentState = ColorLightInputState(trafficLight: redLight, viewController: self)
        
    }
    
    private func nextColorLightTurn() {
        if let state = currentState as? ColorLightInputState {
            let nextLight = state.trafficLight.next
            currentState = ColorLightInputState(trafficLight: nextLight, viewController: self)
            
        }
        
    }

    @IBAction func changeColorAction(_ sender: Any) {
//        if ((self.currentState?.isComleted) != nil) {
//                        self.nextColorLightTurn()
//                    }
        nextColorLightTurn()
    }
}

