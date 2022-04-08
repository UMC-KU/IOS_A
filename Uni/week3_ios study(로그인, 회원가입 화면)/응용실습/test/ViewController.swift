//
//  ViewController.swift
//  test
//
//  Created by 예리 on 2022/03/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// 코너 둥글게 만들기
        myView.layer.cornerRadius = 10
        
//테두리 선만들기
        myView.layer.borderColor = UIColor.black.cgColor
        myView.layer.borderWidth = 5
        
//그림자 넣기
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.masksToBounds = false
// 내부에 속한 요소들이 UIView 밖을 벗어날 때, 잘라낼 것인지. 그림자는 밖에 그려지는 것이므로 false 로 설정
        myView.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치조정
        myView.layer.shadowRadius = 5 // 반경
        myView.layer.shadowOpacity = 0.3 // alpha값
        
//View에 CALayer를 통해 그림그리기 - SubLayer활용
        
        let layer1: CALayer = CALayer()
        layer1.frame = .init(x: 15, y: 25, width: 80, height: 80)
        layer1.backgroundColor = UIColor.red.cgColor
        layer1.cornerRadius = layer1.frame.width / 2 //원으로 만들기
        myView.layer.addSublayer(layer1)

         
        let layer2: CALayer = CALayer()
        layer2.frame = .init(x: 115, y: 25, width: 80, height: 80)
        layer2.backgroundColor = UIColor.yellow.cgColor
        layer2.cornerRadius = layer2.frame.width / 2
        myView.layer.addSublayer(layer2)
         
        let layer3: CALayer = CALayer()
        layer3.frame = .init(x: 215, y: 25, width: 80, height: 80)
        layer3.backgroundColor = UIColor.green.cgColor
        layer3.cornerRadius = layer3.frame.width / 2
        myView.layer.addSublayer(layer3)
        

    }

}

