//
//  ViewController.swift
//  ColorizedApp
//
//  Created by MAcbook on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var mainView: UIView!
    
    var redColor: Float = 0.0
    var greenColor: Float = 0.0
    var blueColor: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupSliders()
        setupLabels()
        //colorizeMainView()
        
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        let valueSlider = round(sender.value * 100) / 100.0
        redLabel.text = valueSlider.formatted()
        redColor = sender.value
        
        let backgroundColor1 = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)

        self.mainView.backgroundColor = backgroundColor1
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let valueSlider = round(sender.value * 100) / 100.0
        greenLabel.text = valueSlider.formatted()
        greenColor = sender.value
        
        let backgroundColor1 = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)

        self.mainView.backgroundColor = backgroundColor1
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        let valueSlider = round(sender.value * 100) / 100.0
        blueLabel.text = valueSlider.formatted()
        blueColor = sender.value
        
        let backgroundColor1 = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)

        self.mainView.backgroundColor = backgroundColor1
    }
    
    
//    func colorizeMainView() {
//        let backgroundColor1 = UIColor(red: CGFloat(redColor)/255, green: CGFloat(greenColor)/255, blue: CGFloat(blueColor)/255, alpha: 1.0)
//
//        self.mainView.backgroundColor = backgroundColor1
//
//    }
    
    // MARK: - Private Methothds
    
    private func setupSliders() {
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.tintColor = .systemRed
        
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.tintColor = .systemGreen
        
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.tintColor = .systemBlue
    }
    
    private func setupLabels() {
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
    }
    
}

