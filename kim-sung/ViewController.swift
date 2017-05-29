//
//  ViewController.swift
//  kim-sung
//
//  Created by James Michael on 28/05/2017.
//  Copyright © 2017 JayD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardName = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize Left Number From 0 To 12
        let leftNumber = Int(arc4random_uniform(13))
        
        //Set Left Image
        leftImageView.image = UIImage(named: cardName[leftNumber])
        
        //Randomize Right Number From 0 To 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //Set Right Image
        rightImageView.image = UIImage(named: cardName[rightNumber])
        
        //Compare The Card Numbers
        if leftNumber > rightNumber {
            //leftCard Wins
            leftScore += 1
            
            //Update Label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            //It's a tie
        }
        else {
            //rightCard Wins
            rightScore += 1
            
            //Update Label
            rightScoreLabel.text = String(rightScore)
        }
    }
    
    //Instagram Button 
    
    @IBAction func fpsTapped(_ sender: Any) {
    
        let Username =  "1fps" // Your Instagram Username here
        let appURL = NSURL(string: "instagram://user?username=\(Username)")!
        let webURL = NSURL(string: "https://instagram.com/\(Username)")!
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL as URL) {
            application.open(appURL as URL)
        } else {
            // if Instagram app is not installed, open URL inside Safari
            application.open(webURL as URL)
        }
        
//    let url = URL(string: "instagram://user?username=1fps")
//    UIApplication.shared.canOpenURL(url!)
//    
//    UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        
    }
}

