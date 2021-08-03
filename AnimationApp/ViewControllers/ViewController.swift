//
//  ViewController.swift
//  AnimationApp
//
//  Created by Robert Miller on 03.08.2021.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var runAnimationButton: UIButton!
    @IBOutlet var infoLabels: [UILabel]!
    
    let data = DataManager()
    var key = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimationButton.setTitle("Run \(data.pop.name)", for: .normal)
    }

    @IBAction func runAnimation(_ sender: UIButton) {
        switchAnimation()
        setButtonTitle()
    }
    
    private func switchAnimation(){
        var currentAnimation: Animation
        
        switch key {
        case 0:
            currentAnimation = data.pop
        case 1:
            currentAnimation = data.shake
        case 2:
            currentAnimation = data.fall
        case 3:
            currentAnimation = data.flash
        default:
            currentAnimation = data.fadeInDown
        }
        
        animationView.animation = currentAnimation.name
        animationView.curve = currentAnimation.curve
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        
        infoLabels[0].text = currentAnimation.name + " animation"
        infoLabels[1].text = "Curve: " + currentAnimation.curve
        infoLabels[2].text = "Force: " + String (Float (currentAnimation.force))
        infoLabels[3].text = "Duration: " + String (Float (currentAnimation.duration))
        
        animationView.animate()
        
        key += 1
        if key > 4 { key = 0 }
    }
    
    func setButtonTitle(){
        switch key {
        case 0:
            runAnimationButton.setTitle("Run \(data.pop.name)", for: .normal)
        case 1:
            runAnimationButton.setTitle("Run \(data.shake.name)", for: .normal)
        case 2:
            runAnimationButton.setTitle("Run \(data.fall.name)", for: .normal)
        case 3:
            runAnimationButton.setTitle("Run \(data.flash.name)", for: .normal)
        default:
            runAnimationButton.setTitle("Run \(data.fadeInDown.name)", for: .normal)
        }
    }
}

