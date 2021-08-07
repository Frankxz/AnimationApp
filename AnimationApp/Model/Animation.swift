//
//  Animation.swift
//  AnimationApp
//
//  Created by Robert Miller on 03.08.2021.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let duration: Float
    let force: Float
    
   static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.name.randomElement()?.rawValue ?? "fall",
                  curve: DataManager.shared.curve.randomElement()?.rawValue ?? "spring",
                  duration: Float.random(in: 1...3),
                  force: Float.random(in: 1...2) )
    }
}
