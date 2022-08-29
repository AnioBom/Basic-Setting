//
//  ViewController.swift
//  Basic Setting
//
//  Created by mac on 8/7/22.
//

import UIKit

protocol SettingViewControllerDelegate {
    func newColor(_color: UIColor)
}

final class ViewController: UIViewController {
    
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
    
    private var settingVC: ColorViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Screen settings"
        
        descriptionColorView()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    @IBAction func goSlider(_ sender: UISlider) {
        
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redLabel)
        case greenSlider: setValue(for: greenLabel)
        default: setValue(for: blueLabel)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else { return }
        colorVC.delegate = self
        colorVc.mainView = view.backgroundColor
    }
    
    //MARK: - Done and Save Button
    
    @IBAction func doneAndSaveSettingDetail(segue: UIStoryboardSegue) {
        
    }
    
    
    //MARK: - Privat metodes
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

//MARK: - Extension

extension ViewController: SettingViewControllerDelegate {
    func setColor()
}
