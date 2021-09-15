//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
//    let story0 = "You see a fork in the road."
//    let choise1 = "Take a left."
//    let choise2 = "Take a right."
    
    let stories = [
    Story(title: "You see a fork in the road.", choise1: "Take a left.", choise2: "Take a right."),
        Story(title: "You see a tiger", choise1: "Shout for help.", choise2: "Play dead."),
        Story(title: "YOu find a treasure chest.", choise1: "Open it.", choise2: "Check for traps.")
    ]
    
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choise1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choise2, for: .normal)

    }

    @IBAction func choiseMade(_ sender: UIButton) {
        guard let userChoise = sender.currentTitle else { return }
        if userChoise == stories[storyNumber].choise1 {
            storyNumber = 1
            updateUI()
        } else {
            storyNumber = 2
            updateUI()
        }
    }
    
    func updateUI () {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choise1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choise2, for: .normal)
    }
    

}

