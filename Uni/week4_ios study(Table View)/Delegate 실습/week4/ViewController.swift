//
//  ViewController.swift
//  week4
//
//  Created by 예리 on 2022/04/02.
//

import UIKit

protocol ChangeLabelDelegate{
    func doChange()
}

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonGoNextVC(_ sender: Any) {
    guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
            //guard 문으로 도착지인 SecondViewControoller를 지정, guard문은 if문이랑 구조가 비슷 -> 공부해보기
        }
        nextVC.previousViewController = self
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
        //어떤 스타일로 보이고 싶은지 정함 -> fullscreen
        //present를 통해서 다음화면이 나타나게 함
    }
    
    var delegate : ChangeLabelDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

