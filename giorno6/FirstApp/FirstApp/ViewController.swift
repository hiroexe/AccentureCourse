//
//  ViewController.swift
//  FirstApp
//
//  Created by Stefano carella on 13/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBAction func calcolaButton(_ sender: UIButton) {
        print("fuuuuuuck")
        if helloLabel.text == "Buongiorno" {
            helloLabel.text = "Buongiorno un cazzo"
            helloLabel.textColor = UIColor.systemPink
        } else {
            helloLabel.text = "Buongiorno"
            helloLabel.textColor = UIColor.gray
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

