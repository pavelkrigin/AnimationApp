//
//  AnimationSettings.swift
//  AnimationApp
//
//  Created by Pavel Krigin on 14.9.22..
//

import Foundation

struct AnimationSettings {
    
    let preset: String
    let curve: String
    let force: String
    let duration: String
    let delay: String
    
////    var fullName: String {
////        "\(name) \(surname)"
//    }
}

extension AnimationSettings {
    static func getAnimationSettings() -> [AnimationSettings] {
        let dataStore = DataStore.shared
        let settings: [AnimationSettings] = []
        
        let presets = dataStore.presets.shuffled()
        let curves = dataStore.curves.shuffled()
        let forces = dataStore.forces.shuffled()
        let durations = dataStore.durations.shuffled()
        let delayes = dataStore.delayes.shuffled()
        
        let iterationCount = min(
            presets.count,
            curves.count,
            forces.count,
            durations.count,
            delayes.count
        )
        
        for index in 0..<iterationCount {
            let settings = AnimationSettings(
                preset: presets[index],
                curve: curves[index],
                force: forces[index],
                duration: durations[index],
                delay: delayes[index]
            )
            
            settings.self
        }
        
        return settings
    }
}
