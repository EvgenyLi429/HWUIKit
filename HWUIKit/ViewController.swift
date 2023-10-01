//
//  ViewController.swift
//  HWUIKit
//
//  Created by Evgeny Likhachev on 29/9/23.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var monitorColor: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initSliders()
        initSlidersLabels()
        monitorColor.layer.cornerRadius = 15
        monitorColor.alpha = 0.0
        //monitorColor.backgroundColor = view.backgroundColor
    }
    
    //MARK: - IBActions
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", CGFloat(greenSlider.value))
        monitorColor.alpha = CGFloat(greenSlider.value)
        updateMonitorColor()
    }

    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", CGFloat(redSlider.value))
        monitorColor.alpha = CGFloat(redSlider.value)
        updateMonitorColor()
    }
        
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", CGFloat(blueSlider.value))
        monitorColor.alpha = CGFloat(blueSlider.value)
        updateMonitorColor()
    }
    
    
        
        
    //MARK: - Privates
    private func initSlidersLabels() {
        redLabel.text = "0.00"
        greenLabel.text = "0.00"
        blueLabel.text = "0.00"
    }
    
    private func initSliders() {
        for slider in [redSlider, greenSlider, blueSlider] {
            guard let slider else {continue}
            slider.minimumValue = 0.00
            slider.maximumValue = 1.00
            slider.value = 0.00
        }
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func updateMonitorColor() {
        let maxAlpha = max(
            CGFloat(redSlider.value),
            CGFloat(greenSlider.value),
            CGFloat(blueSlider.value)
        )
        monitorColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        monitorColor.alpha = maxAlpha
    }
}
