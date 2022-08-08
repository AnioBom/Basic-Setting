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
        self.view.backgroundColor = UIColor(red:CGFloat (redColor.value), green:CGFloat(greenColor.value), blue: CGFloat(blueColor.value), alpha: 1)
        
        numberChangeRed.text = String(redColor.value)
        numberChangeGreen.text = String(greenColor.value)
        numberChangeBlue.text = String(blueColor.value)
        
       /* view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(redColor.value, greenColor.value, blueColor.value))
        */
    }
    
    
    
    //MARK: - descriptions objects
    private func descriptionColorView() {
        mainView.layer.cornerRadius = 10
    }
    
    private func setupSlider() {
        
        redColor.value = 50
        redColor.maximumValue = 1
        redColor.minimumValue = 0
        
        greenColor.value = 50
        greenColor.maximumValue = 1
        greenColor.minimumValue = 0
        
        blueColor.value = 50
        blueColor.maximumValue = 1
        blueColor.minimumValue = 0
        
    }
    
    
    class Color {
        private var red:CGFloat
        private var green:CGFloat
        private var blue:CGFloat
        
        init(red:Float, green:Float, blue:Float) {
            self.red = CGFloat(red)
            self.green = CGFloat(green)
            self.blue = CGFloat(blue)
        }
        
        private func colorView() -> UIColor {
            let color = UIColor(red: red/100, green: green/100, blue: blue/100, alpha: 1)
            return color
        }
        
    }

}

