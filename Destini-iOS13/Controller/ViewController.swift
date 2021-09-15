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
    
   var brain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = brain.getStoryText()
        choice1Button.setTitle(brain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(brain.getStoryChoice2(), for: .normal)

    }

    @IBAction func choiseMade(_ sender: UIButton) {
        guard let userAnswer = sender.currentTitle else { return }
        brain.nextStory(userChoice: userAnswer)
        updateUI()
    }
    
    func updateUI () {
        storyLabel.text = brain.getStoryText()
        choice1Button.setTitle(brain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(brain.getStoryChoice2(), for: .normal)
    }
    

}

