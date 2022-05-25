//
//  ViewController.swift
//  RGBView
//
//  Created by Dmitriy Ryndya on 16.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var valueRedField: UILabel!
    @IBOutlet var valueGreenField: UILabel!
    @IBOutlet var valueBlueField: UILabel!
    @IBOutlet var sliderForRedColor: UISlider!
    @IBOutlet var sliderForGreenColor: UISlider!
    @IBOutlet var sliderForBlueColor: UISlider!
    @IBOutlet var mainColorScreen: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Main Color Field
        mainColorScreen.backgroundColor = .white
        
        
        // MARK: Labales
        valueRedField.text = "1"
        valueGreenField.text = "1"
        valueBlueField.text = "1"
        valueRedField.font = valueRedField.font.withSize(25)
        valueGreenField.font = valueGreenField.font.withSize(25)
        valueBlueField.font = valueBlueField.font.withSize(25)
        valueRedField.textAlignment = .center
        valueGreenField.textAlignment = .center
        valueBlueField.textAlignment = .center
        
        
       // MARK: Sliders
        sliderForRedColor.value = 1
        sliderForGreenColor.value = 1
        sliderForBlueColor.value = 1
        sliderForRedColor.minimumValue = 1
        sliderForGreenColor.minimumValue = 1
        sliderForBlueColor.minimumValue = 1
        sliderForRedColor.maximumValue = 255
        sliderForGreenColor.maximumValue = 255
        sliderForBlueColor.maximumValue = 255
        sliderForRedColor.minimumTrackTintColor = .red
        sliderForGreenColor.minimumTrackTintColor = .green
        sliderForBlueColor.minimumTrackTintColor = .blue
        sliderForRedColor.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        sliderForGreenColor.thumbTintColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
        sliderForBlueColor.thumbTintColor = UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1)
        
        
    }

    @IBAction func changeValueForRed() {
        valueRedField.text = String(Int(sliderForRedColor.value))
        mainColorScreen.backgroundColor = UIColor(red: CGFloat(sliderForRedColor.value)/255, green: CGFloat(sliderForGreenColor.value)/255, blue: CGFloat(sliderForBlueColor.value)/255, alpha: 1)
    }
    
    
    @IBAction func changeValueForGreen() {
        valueGreenField.text = String(Int(sliderForGreenColor.value))
        mainColorScreen.backgroundColor = UIColor(red: CGFloat(sliderForRedColor.value)/255, green: CGFloat(sliderForGreenColor.value)/255, blue: CGFloat(sliderForBlueColor.value)/255, alpha: 1)
    }
    
    
    @IBAction func changeValueForBlue() {
        valueBlueField.text = String(Int(sliderForBlueColor.value))
        mainColorScreen.backgroundColor = UIColor(red: CGFloat(sliderForRedColor.value)/255, green: CGFloat(sliderForGreenColor.value)/255, blue: CGFloat(sliderForBlueColor.value)/255, alpha: 1)
    }
}

