//
//  ViewController.swift
//  Week_4_2
//
//  Created by 🔥 on 2022/04/08.
//

import UIKit

protocol Flyable {
    func fly()
}

class Person : Flyable{
    func fly(){
        print("날았다.")
    }
}

class ViewController: UIViewController {

    let person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        person.fly()
    }


}

