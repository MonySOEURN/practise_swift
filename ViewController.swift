//
//  ViewController.swift
//  youTube-CodeWithChris_app
//
//  Created by Mony SOEURN on 2/1/2563 BE.
//  Copyright © 2563 BE Mony SOEURN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


    @IBAction func dealTapped(_ sender: Any) {
        // random some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        // update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        // compare the random numbers
        if leftNumber > rightNumber {
//            left size win
            leftScore += 1
            leftScoreLabel.text = "\(leftScore)"
        }
        else if leftNumber < rightNumber {
//            right size win
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
//            tie
        }
    }
    
}

