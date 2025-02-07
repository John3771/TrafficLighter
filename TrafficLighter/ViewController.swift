//
//  ViewController.swift
//  TrafficLighter
//
//  Created by Глеб Соколов on 5.02.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TopLightView: UIView!
    @IBOutlet weak var MidLightView: UIView!
    @IBOutlet weak var LowLightView: UIView!
    @IBOutlet weak var ButtonLightChanger: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TopLightView.layer.cornerRadius = 64
        MidLightView.layer.cornerRadius = 64
        LowLightView.layer.cornerRadius = 64
        ButtonLightChanger.layer.cornerRadius = 8
        
    }

    @IBAction func stateChangerButton(_ sender: UIButton) {
        
    }
}

