//
//  ViewController.swift
//  TrafficLighter
//
//  Created by Глеб Соколов on 5.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var TopLightView: UIView!
    @IBOutlet weak var MidLightView: UIView!
    @IBOutlet weak var LowLightView: UIView!
    @IBOutlet weak var ButtonLightChanger: UIButton!
    
    private var currentLight: CurrentLight = .green
    private var lightIsOn = 1.0
    private var lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TopLightView.layer.cornerRadius = 64
        MidLightView.layer.cornerRadius = 64
        LowLightView.layer.cornerRadius = 64

        ButtonLightChanger.layer.cornerRadius = 8
        
        TopLightView.alpha = lightIsOff
        MidLightView.alpha = lightIsOff
        LowLightView.alpha = lightIsOff
        
        
    }

    @IBAction func stateChangerButton() {
        if ButtonLightChanger.currentTitle == "START" {
            ButtonLightChanger.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .green:
            TopLightView.alpha = lightIsOn
            LowLightView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            TopLightView.alpha = lightIsOff
            MidLightView.alpha = lightIsOn
            currentLight = .red
        case .red:
            MidLightView.alpha = lightIsOff
            LowLightView.alpha = lightIsOn
            currentLight = .green
        }
    }
}

// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}

