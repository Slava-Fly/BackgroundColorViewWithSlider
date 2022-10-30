//
//  ViewController.swift
//  BackgroundColorViewWithSlider
//
//  Created by User on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewBackgroundColor: UIView!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var currentValueRedSlider: UILabel!
    @IBOutlet var currentValueGreenSlider: UILabel!
    @IBOutlet var currentValueBlueSlider: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
    }
    
    
    @IBAction func forRedSliderAction(_ sender: UISlider) {
        currentValueRedSlider.text = String(sender.value)
        currentValueRedSlider.text = String(format: "%.2f", redSlider.value)
        let viewColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        viewBackgroundColor.backgroundColor = viewColor
    }
    
    private func setupRedSlider() {
        redSlider.value = 0
        currentValueRedSlider.text = redSlider.value.formatted()
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    
    
    @IBAction func forGreenSliderAction(_ sender: UISlider) {
        currentValueGreenSlider.text = String(sender.value)
        currentValueGreenSlider.text = String(format: "%.2f", greenSlider.value)
        let viewColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        viewBackgroundColor.backgroundColor = viewColor
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0
        currentValueGreenSlider.text = greenSlider.value.formatted()
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    
    
    @IBAction func forBlueSliderAction(_ sender: UISlider) {
        currentValueBlueSlider.text = String(sender.value)
        currentValueBlueSlider.text = String(format: "%.2f", blueSlider.value)
        let viewColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        viewBackgroundColor.backgroundColor = viewColor
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0
        currentValueBlueSlider.text = blueSlider.value.formatted()
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
}


