//
//  SecondViewController.swift
//  week4
//
//  Created by 예리 on 2022/04/02.
//

import UIKit

class SecondViewController : UIViewController, ChangeLabelDelegate {
    func doChange() {
        previousViewController?.label.text = self.textField.text
    }
    
    @IBOutlet weak var textField: UITextField!
    var previousViewController : ViewController?
    
    @IBAction func buttonDissmiss(_ sender: Any) {
        doChange()
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previousViewController?.delegate = self

    }


}
