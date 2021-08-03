//
//  DataManager.swift
//  AnimationApp
//
//  Created by Robert Miller on 03.08.2021.
//

import Spring

class DataManager {
    let pop = Animation(name: "pop",
                        curve: "easeIn",
                        duration: 2.5,
                        force: 2.5)
    
    let shake = Animation(name: "shake",
                          curve: "spring",
                          duration: 4.0,
                          force: 1.7)
    
    let flash = Animation(name: "flash" ,
                          curve: "easeInOut",
                          duration: 3.0,
                          force: 2.0)
    
    let fall = Animation(name: "fall",
                         curve: "spring",
                         duration: 3.0,
                         force: 1.0)
    
    let fadeInDown = Animation(name: "fadeInDown",
                               curve: "spring",
                               duration: 3.0,
                               force: 1.8)
  
}
