//
//  ViewController.swift
//  MySpringAnimation
//
//  Created by Eugene on 9.12.22.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationSettings = AnimationSettings.getRandomSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(with: animationSettings)
    }
    
    @IBAction func runButton(_ sender: UIButton) {
        setViewAnimationSettings(with: animationSettings)
        
        updateUI(with: animationSettings)
        
        springAnimationView.animate()
        
        animationSettings = AnimationSettings.getRandomSettings()
        
        sender.setTitle(animationSettings.preset, for: .normal)
    }
}

extension ViewController {
    
    private func updateUI(with settings: AnimationSettings) {
        descriptionLabel.text = settings.description
    }
    
    private func setViewAnimationSettings(with settings: AnimationSettings) {
        springAnimationView.animation = settings.preset
        springAnimationView.curve = settings.curve
        springAnimationView.force = settings.force
        springAnimationView.duration = settings.duration
        springAnimationView.delay = settings.delay
    }
}
