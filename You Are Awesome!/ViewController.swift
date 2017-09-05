//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Stephen Casazza on 8/28/17.
//  Copyright © 2017 Casazza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    // This code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
        let messages = ["You Are Fantastic!",
                         "You Are Great!",
                         "You Are Fantastic!",
                         "Fabulous? That's You!",
                         "You Brighten My Day Everyday!",
                         "You Da Bomb",
                         "You Are the Best ",
                         "You Are Awesome"]

        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
//        var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[randomIndex]
        
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if index == messages.count {index = 0}
    
        
//        let message1 = "You Are Sick!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//        let message4 = "You Are Fabulous!"
//
//        if awesomeLabel.text == message1 {
//            awesomeLabel.text = message2
//            awesomeLabel.textColor = UIColor.green
//        } else if
//            awesomeLabel.text == message2 {
//            awesomeLabel.text = message3
//            awesomeLabel.textColor = UIColor.blue
//        } else if
//            awesomeLabel.text == message3 {
//            awesomeLabel.text = message4
//            awesomeLabel.textColor = UIColor.orange
//        } else {
//            awesomeLabel.text = message1
//            awesomeLabel.textColor = UIColor.red }
 
 }
 
            }


