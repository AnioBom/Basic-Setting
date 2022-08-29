//
//  StartViewController.swift
//  Basic Setting
//
//  Created by mac on 8/28/22.
//

import UIKit

protocol SettingViewControllerDelegate {
    func setColor(_color: UIColor)
}

final class StartViewController: UIViewController {
    
    //MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Start view"
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextVC = segue.destination as? ViewController else { return }
        nextVC.delegate = self
        nextVC.viewColor = view.backgroundColor
    }

}

//MARK: - Extention

extension StartViewController: SettingViewControllerDelegate {
    func setColor(_color: UIColor) {
        
    }
}

