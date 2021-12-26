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
    var secilenIndex : Int = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        secilenIndex = sender.selectedSegmentIndex
        txtRed.text?.removeAll()
        txtGreen.text?.removeAll()
        txtBlue.text?.removeAll()
        lblResult.text?.removeAll()
        lblSelected.backgroundColor = UIColor.clear
        
        if secilenIndex == 0 {
            
        }
        
        else {
            
        }
        
    }
    
    @IBAction func convertClickedButton(_ sender: Any) {
        
        if secilenIndex == 0 {
            
            convertRGBtoHEX()
            
        }else {
            
            convertHEXtoRGB()

        }
    }
    
    
    func convertRGBtoHEX() {
        
        if let redValue = UInt8(txtRed.text!) {
            if let greenValue = UInt8(txtGreen.text!) {
                if let blueValue = UInt8(txtBlue.text!) {
                    
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    lblResult.text = "HEX Color : #\(redHex)\(greenHex)\(blueHex)"
                    lblSelected.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                    
                }
            }
            
        }else {
            
            makeAlert()
        }
        
    }
    
    func convertHEXtoRGB() {
        
        if let redValue = UInt8(txtRed.text!, radix: 16) {
            if let greenValue = UInt8(txtGreen.text!, radix: 16) {
                if let blueValue = UInt8(txtBlue.text!, radix: 16) {
                
                
                    lblResult.text = "RED : \(redValue) \n GREEN : \(greenValue) \n BLUE : \(blueValue)"
                    lblSelected.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
            }
        }

        }else {
            
            makeAlert()
            
        }
        
    }
    
    func makeAlert() {
        
        let alert = UIAlertController(title: "ERROR!", message: "Please make sure you entered correctly!", preferredStyle: UIAlertController.Style.alert)
        let button = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(button)
        
        self.present(alert, animated: true, completion: nil)

        
    }
    
    
}

