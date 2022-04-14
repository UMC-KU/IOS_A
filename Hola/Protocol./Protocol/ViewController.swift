//
//  ViewController.swift
//  Protocol
//
//  Created by 송채영 on 2022/04/14.
//

import UIKit

protocol Flyable {
    func fly()
}

protocol Runnable{
    func run()
}

class Person : Flyable, Runnable {
    func run() {
        print("달렸다.")
    }
    
    func fly() {
        print("날았다.")
    }
    
}

class ViewController: UIViewController {
    
    let person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        person.fly()
        person.run()
    }


}

