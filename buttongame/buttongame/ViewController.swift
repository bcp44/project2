//
//  ViewController.swift
//  buttongame
//
//  Created by Pommier, Brianna C on 3/28/18.
//  Copyright © 2018 Pommier, Brianna C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgJack: UIImageView!
    @IBOutlet weak var imgQueen: UIImageView!
    @IBOutlet weak var imgKing: UIImageView!
    @IBOutlet weak var imgAce: UIImageView!
    
    @IBOutlet weak var gameScore: UILabel!
    

    @IBOutlet weak var winLabel: UILabel!
    
    
    @IBOutlet weak var jackButton: UIButton!
    @IBOutlet weak var queenButton: UIButton!
    @IBOutlet weak var kingButton: UIButton!
    @IBOutlet weak var aceButton: UIButton!
    
    @IBOutlet weak var testButton: UIButton!
    
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    
    var score: Int = 0
   // var winner : Int = 0
    
    
  
    
    //card buttons
    
    @IBAction func gameJack(_ sender: Any) {
        didScore(points:3)

        
    }
    
    @IBAction func gameQueen(_ sender: Any) {
        let randomNumber = arc4random_uniform(4)
        didScore(points: Int(randomNumber))
    }
    
    @IBAction func gameKing(_ sender: Any) {
        let randomNumber = arc4random_uniform(8)
        didScore(points:Int(randomNumber))
    }
    
    @IBAction func gameAce(_ sender: Any) {
        didScore(points:-2)
    }
    

    

    
   
    
    //I pasted in
    func didScore(points:Int){
        score = score + points
        gameScore.text = "\(score)"
        if score  == 500 {
            hiddenLabel.isHidden = true
        }
     
        
        
        }
 
 
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // if (score < 100) {
        //self.winLabel.isHidden = true
      //  }
       // else if (score == 100) {
        //    self.winLabel.isHidden = false
      //  }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   


}
