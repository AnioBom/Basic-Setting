//
//  ViewController.swift
//  Basic Setting
//
//  Created by mac on 8/7/22.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IB Outlet
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    //MARK: - Public Properties
    
    var delegate: SettingViewControllerDelegate!
    var viewColor: UIColor!
    
    //MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Screen settings"
        
        descriptionColorView()
        
        mainView.backgroundColor = viewColor
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    //MARK: - IB Action
    
    @IBAction func goSlider(_ sender: UISlider) {
        
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redLabel)
        case greenSlider: setValue(for: greenLabel)
        default: setValue(for: blueLabel)
        }
    }
    
    
    //MARK: - Done and Save Button
    
    @IBAction func doneAndSaveSettingDetail(segue: UIStoryboardSegue) {
        delegate?.setColor(_color: viewColor)
    }
    
    
    //MARK: - Private Methods
    private func descriptionColorView() {
        mainView.layer.cornerRadius = 15
    }
    
    private func setColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                label.text = string(from: redSlider)
            case greenLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

