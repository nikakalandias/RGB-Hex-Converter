//
//  ViewController.swift
//  RGB-Hex-Converter
//
//  Created by Nika Kalandia on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var txtGreen: UITextField!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var lblSelected: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
    }
    
    @IBAction func convertClickedButton(_ sender: Any) {
    }
    
    
}

