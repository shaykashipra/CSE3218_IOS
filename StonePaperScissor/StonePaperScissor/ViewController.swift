

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    var myPoints = 0
    var pcPoints = 0
    let array = ["stone", "paper", "scissors"]
    @IBOutlet weak var myChoiseLabel: UILabel!
    @IBOutlet weak var pcChoiseLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var pcPointsLabel: UILabel!
    
    
    @IBAction func rockSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3))
        let pcSelected = array[randomSelected]
        
        if pcSelected == "stone" {
            myChoiseLabel.text = "Your choice: Rock"
            pcChoiseLabel.text = "Computer's choice: Rock"
            theEndLabel.text = "It's a tie."
            
        } else if pcSelected == "paper" {
            myChoiseLabel.text = "Your choice: Rock"
            pcChoiseLabel.text = "Computer's choice: Paper"
            theEndLabel.text = "Computer wins."
            
            pcPoints += 1
            pcPointsLabel.text = String(pcPoints)
            
        } else if pcSelected == "scissors" {
            myChoiseLabel.text = "Your choice: Rock"
            pcChoiseLabel.text = "Computer's choice: Scissors"
            theEndLabel.text = "You win."
            
            myPoints += 1
            myPointsLabel.text = String(myPoints)
        }

    }
    
    
    @IBAction func paperSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3))
        let pcSelected = array[randomSelected]
        if pcSelected == "stone" {
            myChoiseLabel.text = "Your choice: Paper"
            pcChoiseLabel.text = "Computer's choice: Rock"
            theEndLabel.text = "You win."
            
            myPoints += 1
            myPointsLabel.text = String(myPoints)
            
        } else if pcSelected == "paper" {
            myChoiseLabel.text = "Your choice: Paper"
            pcChoiseLabel.text = "Computer's choice: Paper"
            theEndLabel.text = "It's a tie."
            
        } else if pcSelected == "scissors" {
            myChoiseLabel.text = "Your choice: Paper"
            pcChoiseLabel.text = "Computer's choice: Scissors"
            theEndLabel.text = "Computer wins."
            
            pcPoints += 1
            pcPointsLabel.text = String(pcPoints)
        }
    }
    
    @IBAction func scissorSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3))
        let pcSelected = array[randomSelected]
        
        if pcSelected == "stone" {
            myChoiseLabel.text = "Your choice: Scissors"
            pcChoiseLabel.text = "Computer's choice: Rock"
            theEndLabel.text = "Computer wins."
            pcPoints += 1
            pcPointsLabel.text = String(pcPoints)
            
        } else if pcSelected == "paper" {
            myChoiseLabel.text = "Your choice: Scissors"
            pcChoiseLabel.text = "Computer's choice: Paper"
            theEndLabel.text = "You win."
            myPoints += 1
            myPointsLabel.text = String(myPoints)
            
        } else if pcSelected == "scissors" {
            myChoiseLabel.text = "Your choice: Scissors"
            pcChoiseLabel.text = "Computer's choice: Scissors"
            theEndLabel.text = "It's a tie."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

