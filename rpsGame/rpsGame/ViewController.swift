//
//  ViewController.swift
//  rpsGame
//
//  Created by PDing ㅤ on 2023/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rpsResult: UILabel!
    
    @IBOutlet weak var comChoiceImage: UIImageView!
    @IBOutlet weak var myChoiceImage: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        comChoiceImage.image = #imageLiteral(resourceName: "ready")
        myChoiceImage.image = #imageLiteral(resourceName: "ready")
        
        
    }

    @IBAction func rpsButton(_ sender: UIButton) {
        
        
        
        
        
        
    }
    
    
    @IBAction func rpsSelect(_ sender: UIButton) {
        
        // 컴퓨터와 나의 값을 비교
        // 이겼다 졌다 비겼다 나오게 하기
        
    }
    
    @IBAction func rpsReset(_ sender: UIButton) {
        
        // 선택하세요 표시
        // 준비 표시
        // 이미지 처음으로 초기화
        // 값 초기화
        
    }
    
    
    
    

}

