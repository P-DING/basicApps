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
    
    var comRps: Rps = Rps(rawValue: Int.random(in:0...2))!
    var myRps: Rps = Rps(rawValue: Int.random(in:0...2))!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        comChoiceImage.image = #imageLiteral(resourceName: "ready")
        myChoiceImage.image = #imageLiteral(resourceName: "ready")
        
        
    }
    
    @IBAction func rpsButton(_ sender: UIButton) {
        
        let title = sender.currentTitle!
        
        switch title {
        case "가위":
            myRps = Rps.scissors
        case "바위":
            myRps = Rps.rock
        case "보":
            myRps = Rps.paper
        default:
            break
        }
        
    }
    
    
    @IBAction func rpsSelect(_ sender: UIButton) {
        
        switch comRps {
        case Rps.rock:
            comChoiceImage.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comChoiceImage.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comChoiceImage.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        switch myRps {
        case Rps.rock:
            myChoiceImage.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myChoiceImage.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.scissors:
            myChoiceImage.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        if comRps == myRps {
            rpsResult.text = "비겼습니다"
        } else if comRps == .rock && myRps == .paper {
            rpsResult.text = "이겼습니다"
        } else if comRps == .paper && myRps == .scissors {
            rpsResult.text = "이겼습니다"
        } else if comRps == .scissors && myRps == .rock {
            rpsResult.text = "이겼습니다"
        } else {
            rpsResult.text = "졌습니다"
        }
    }
    
    
    @IBAction func rpsReset(_ sender: UIButton) {
        
        rpsResult.text = "선택하세요"
        myChoiceLabel.text = "준비"
        comChoiceLabel.text = "준비"
        myChoiceImage.image = UIImage(named: "ready.png")
        comChoiceImage.image = UIImage(named: "ready.png")
        comRps = Rps(rawValue: Int.random(in: 0...2))!
        
    }
    
    
}

