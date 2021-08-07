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
    
    var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func runAnimation(_ sender: UIButton) {
        setupAnimation()
    }
    private func setupAnimation() {
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat (animation.force)
        animationView.duration = CGFloat (animation.duration)
        animationView.animate()
        
        infoLabels[0].text = animation.name + " animation"
        infoLabels[1].text = "Curve: " + animation.curve
        infoLabels[2].text = "Force: " + String (animation.force)
        infoLabels[3].text = "Duration: " + String (animation.duration)
        
        animation = Animation.getRandomAnimation()
        runAnimationButton.setTitle("Run \(animation.name)", for: .normal)
    }
}

