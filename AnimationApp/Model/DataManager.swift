//
//  DataManager.swift
//  AnimationApp
//
//  Created by Robert Miller on 03.08.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let duration: [CGFloat] = [2.5, 4.0, 3.0, 3.5, 3.2]
    let force: [CGFloat] = [2.7, 1.7, 2.0, 1.0, 1.8]
    let name: [Spring.AnimationPreset] = [.pop,
                                          .shake,
                                          .flash,
                                          .fall,
                                          .fadeInDown ]
    
    let curve: [Spring.AnimationCurve] = [.easeIn,
                                          .spring,
                                          .easeInOut,
                                          .easeInExpo,
                                          .easeInCirc]
}
