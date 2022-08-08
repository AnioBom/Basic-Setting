//
//  ViewController.swift
//  Basic Setting
//
//  Created by mac on 8/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redColor: UISlider!
    @IBOutlet var greenColor: UISlider!
    @IBOutlet var blueColor: UISlider!
    
    @IBOutlet var numberChangeRed: UILabel!
    @IBOutlet var numberChangeGreen: UILabel!
    @IBOutlet var numberChangeBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionColorView()
    }
    
    @IBAction func moveSlider() {
        self.mainView.backgroundColor = UIColor(red:CGFloat (redColor.value), green:CGFloat(greenColor.value), blue: CGFloat(blueColor.value), alpha: 1)
        
        numberChangeRed.text = String(redColor.value)
        numberChangeGreen.text = String(greenColor.value)
        numberChangeBlue.text = String(blueColor.value)
        
    }
    
    
    
    //MARK: - descriptions objects
    private func descriptionColorView() {
        mainView.layer.cornerRadius = 10
    }
    
    private func setupSlider() {
        
        redColor.value = 50
        redColor.maximumValue = 0
        redColor.minimumValue = 100
        
        greenColor.value = 50
        greenColor.maximumValue = 0
        greenColor.minimumValue = 100
        
        blueColor.value = 50
        blueColor.maximumValue = 0
        blueColor.minimumValue = 100
        
    }

}

