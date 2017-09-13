//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Stephen Casazza on 8/28/17.
//  Copyright © 2017 Casazza. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var soundSwitch: UISwitch!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 4
    let numberOfSounds = 4

    
    
    // This code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - My own functions
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) { if let sound = NSDataAsset(name: soundName) {
        // check if sound.data is a soundfile
        do {try audioPlayer = AVAudioPlayer(data: sound.data)
            audioPlayer.play()
        }
        catch { //if sound.data is not a valid audio file
            print("Error: data in \(soundName) couldnt be played as a sound") }
    } else {
        //if reading the NSDataAsset didn't work, tell the user/ report error
        print("Error file \(soundName) didn't load") }
    }

    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    // MARK: - Actions
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if !soundSwitch.isOn && soundNumber != -1 {
            // stop playing
                awesomePlayer.stop() }
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
        let messages = ["You Are Fantastic!",
                         "You Are Great!",
                         "You Are So Cool!",
                         "Fabulous? That's You!",
                         "You Brighten My Day Everyday!",
                         "You Da Bomb!",
                         "You Are the Best!",
                         "You Are Awesome!"]

        // show message
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        awesomeImage.isHidden = false 
        
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named:"image" + String(imageNumber)) // show image
        
        // get a random number to use for our soundName file
        if soundSwitch.isOn == true {
            soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
            
            var soundName = "Sound\(soundNumber)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
            //can we load in file soundName
        }
        
    }
    
    
        }

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
 




