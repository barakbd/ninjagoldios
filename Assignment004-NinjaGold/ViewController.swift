//
//  ViewController.swift
//  Assignment004-NinjaGold
//
//  Created by JD Penuliar on 7/7/16.
//  Copyright © 2016 JD Penuliar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score: Int = 0
    var result = 0
    @IBAction func buildingButtonPressed(sender: UIButton) {
        
        print (sender.tag)
        if sender.tag == 0{
            result = Int(arc4random_uniform(11))+10
            score += result
        }else if sender.tag == 1{
            result = Int(arc4random_uniform(6))+5
            score += result
        }else if sender.tag == 2{
            result = Int(arc4random_uniform(4))+2
            score += result
        }else if sender.tag == 3{
            result = Int(arc4random_uniform(101))-50
            score += result
        }
        
        putScore(score, senderTag: sender.tag, result: result)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 5...8{
            if let theLabel = self.view.viewWithTag(i) as? UILabel {
                theLabel.text = ""
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func putScore(score: Int, senderTag: Int, result: Int){
        let scoreDisplay = score
        let senderTag = senderTag
        let result = result
        if let theLabel = self.view.viewWithTag(9) as? UILabel {
            theLabel.text = "Score: \(scoreDisplay)"
        }
        for i in 5...8{
            print ("yo\(i)haha\(senderTag)")
            if let theLabel = self.view.viewWithTag(i) as? UILabel {
                theLabel.text = ""
            }
        }
        for i in 0...3{
            if senderTag == i{
                if let theLabel = self.view.viewWithTag(i+5) as? UILabel {
                    theLabel.text = "You earned \(result)"
                }
            }
        }
        if senderTag == 4{
            print ("haha reset")
            for i in 5...9{
                print ("yo\(i)haha\(senderTag)")
                if let theLabel = self.view.viewWithTag(i) as? UILabel {
                    theLabel.text = ""
                }
            }
            if let theLabel = self.view.viewWithTag(9) as? UILabel {
                theLabel.text = "Score: "
            }
            
        }
        
    }


}

