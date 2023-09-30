//
//  ViewController.swift
//  HWUIKit
//
//  Created by Evgeny Likhachev on 29/9/23.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var monitorClour: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initSliders()
        initSlidersLabels()
        monitorClour.layer.cornerRadius = 15
    }
    
//MARK: - IBActions
    @IBAction func sliderAction() {
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
    }
    
    //MARK: - Privates
    private func initSlidersLabels() {
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
    }
    
    private func initSliders() {
        for slider in [redSlider, greenSlider, blueSlider] {
            guard let slider else {continue}
            slider.minimumValue = 0.0
            slider.maximumValue = 1.0
            slider.maximumTrackTintColor = .systemGray2
            slider.value = 0.0
        }
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    
    
    
    
    
    
}
