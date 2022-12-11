//
//  ViewController.swift
//  MySpringAnimation
//
//  Created by Eugene on 9.12.22.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var presetValueLabel: UILabel!
    @IBOutlet var curveValueLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var delayValueLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var runButton: UIButton!
    
    private var animationSettings = AnimationSettings.getRandomSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(with: animationSettings)
    }

    @IBAction func runButtonTapped() {
        setViewAnimationSettings(with: animationSettings)
        
        updateUI(with: animationSettings)
        
        springAnimationView.animate()
        
        animationSettings = AnimationSettings.getRandomSettings()
        
        runButton.setTitle(animationSettings.preset, for: .normal)
    }
}

extension ViewController {
    
    private func updateUI(with settings: AnimationSettings) {
        presetValueLabel.text = settings.preset
        curveValueLabel.text = settings.curve
        forceValueLabel.text = settings.forceString
        durationValueLabel.text = settings.durationString
        delayValueLabel.text = settings.delayString
    }
    
    private func setViewAnimationSettings(with settings: AnimationSettings) {
        springAnimationView.animation = settings.preset
        springAnimationView.curve = settings.curve
        springAnimationView.force = settings.force
        springAnimationView.duration = settings.duration
        springAnimationView.delay = settings.delay
    }
}
