//
//  AnimationModel.swift
//  MySpringAnimation
//
//  Created by Eugene on 9.12.22.
//

import Foundation
import SpringAnimation

struct AnimationSettings {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var forceString: String {
        String(format: "%.2f", force)
    }
    var durationString: String {
        String(format: "%.2f", duration)
    }
    var delayString: String {
        String(format: "%.2f", delay)
    }
}

extension AnimationSettings {
    static func getRandomSettings() -> AnimationSettings {
        let animationSetting = AnimationSettings(preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "fall",
                                                curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "spring",
                                                force: CGFloat.random(in: 0.1...2),
                                                duration: CGFloat.random(in: 1...3),
                                                delay: CGFloat.random(in: 0...1))
        
        return animationSetting
    }
}
