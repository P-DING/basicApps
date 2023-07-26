//
//  ViewController.swift
//  myFirstApp
//
//  Created by PDing ㅤ on 2023/07/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "반갑습니다"
        
        
        
        
    }
    
    @IBAction func mainButton(_ sender: UIButton) {
        
        mainLabel.text = "안녕하세요"
        
        
    
    }
    
    
    
    
    
    
    
}

