//
//  ViewController.swift
//  Protocol 실습
//
//  Created by 예리 on 2022/04/02.
//

import UIKit
 //위치 중요** 클래스 밖에서 protocol

protocol Flyable {
    func Fly()
}

protocol Runable {
    func run()
}

class Person : Flyable, Runable { //오류 테이블뷰와 컬렉션뷰에서 계속 보게 된다.
    func run() {
        print("달렸다.")
    }
    
    func Fly() {
        print("날았다.")
    }
    
    
}

class ViewController: UIViewController {

    let person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        person.Fly()
        person.run()
    }


}

