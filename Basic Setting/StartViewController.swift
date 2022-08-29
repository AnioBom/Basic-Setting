//
//  StartViewController.swift
//  Basic Setting
//
//  Created by mac on 8/28/22.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Start view"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextVC = segue.destination as? ViewController else { return }
    }

}
