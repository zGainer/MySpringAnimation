//
//  AnimationModel.swift
//  MySpringAnimation
//
//  Created by Eugene on 9.12.22.
//

import Foundation

struct AnimationSettings {
    
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
}

extension AnimationSettings {
    static func getRandomSettings() -> AnimationSettings {
        
        let animationSettings = AnimationSettings(preset: presets.randomElement()?.rawValue ?? "fall",
                                                 curve: curves.randomElement()?.rawValue ?? "spring",
                                                 force: CGFloat.random(in: 0.1...2),
                                                 duration: CGFloat.random(in: 1...3),
                                                 delay: CGFloat.random(in: 0...1))
        
        return animationSettings
    }
}
