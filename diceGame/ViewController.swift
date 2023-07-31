
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDiceImage: UIImageView!
    @IBOutlet weak var secondDiceImage: UIImageView!
    
    
    var diceArrays = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstDiceImage.image = diceArrays.randomElement()
        secondDiceImage.image = diceArrays.randomElement()
        
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        firstDiceImage.image = diceArrays.randomElement()
        secondDiceImage.image = diceArrays.randomElement()
        
        
    }
     
     
}

