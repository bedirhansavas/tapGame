//
//  secondViewController.swift
//  tapGame
//
//  Created by Bedirhan Savaş on 28.04.2021.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    var timeCounter = 10
    var counter1 = 0
    var counter2 = 0
    
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image1.isUserInteractionEnabled = true
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(picture1))
        image1.addGestureRecognizer(gesture1)
        
        image2.isUserInteractionEnabled = true
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(picture2))
        image2.addGestureRecognizer(gesture2)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timeFunc(){
        timeCounter = timeCounter - 1
        timeLabel.text = "\(timeCounter)"
        
        
        
        if (timeCounter == 0){
            
            timer.invalidate()
            if(counter1 > counter2){
                alertFunc(message: "Winner is PLAYER 1")
            }
            else if(counter1 < counter2){
                alertFunc(message: "Winner is PLAYER 2")
            }
            else{
                alertFunc(message: "DRAW")
            }
            
            
        }
        
    }
    func alertFunc(message: String){
        let alert = UIAlertController(title: "GAME OVER", message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func picture1(){
        counter1 = counter1+1
        scoreLabel1.text = "Score = \(counter1)"
    }
    
    @objc func picture2(){
        counter2 = counter2+1
        scoreLabel2.text = "Score = \(counter2)"
    }
 

}
