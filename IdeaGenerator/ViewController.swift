//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Barbarian Mogul on 10/25/18.
//  Copyright © 2018 Makhmud Islamov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startupLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    let startups = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"];
    
    let targets = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func generateIdea() {
//        generating startups
        let maxStartupIndex = UInt32(startups.count)
        let randomStartupIndex = Int(arc4random_uniform(maxStartupIndex))
        startupLabel.text = startups[randomStartupIndex]
        
//         generating target for startups
        let maxTargetIndex = UInt32(targets.count)
        let randomTargetIndex = Int(arc4random_uniform(maxTargetIndex))
        targetLabel.text = targets[randomTargetIndex]
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateIdea()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateIdea()
    }
    
}

