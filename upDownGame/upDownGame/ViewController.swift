//
//  ViewController.swift
//  upDownGame
//
//  Created by PDing ㅤ on 2023/07/31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var upDownShow: UILabel!
    @IBOutlet weak var numberShow: UILabel!
    
    var comNum = Int.random(in: 1...10)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
    }
    
    @IBAction func numberButton(_ sender: UIButton) {
        
        guard let numString = sender.currentTitle else { return }
        
        numberShow.text = numString
        
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
    
        guard let myNumberString = numberShow.text else { return }
        guard let myNumber = Int(myNumberString) else { return }
        
        if myNumber > comNum {
            upDownShow.text = "Down"
        } else if myNumber < comNum {
            upDownShow.text = "Up"
        } else {
            upDownShow.text = "Bingo :)"
        }
        
        
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        upDownShow.text = "선택하세요"
        numberShow.text = ""
        comNum = Int.random(in: 1...10)
        
    }
    
}
    
    


