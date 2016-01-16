//
//  ViewController.swift
//  Stopwatch
//
//  Created by Kyra Drake on 1/1/16.
//  Copyright © 2016 Kyra Drake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var timeMilSec = 0
    var timeSec = 0
    var timeMin = 0
    var timeHr = 0

    @IBOutlet weak var timerLabel: UILabel!
    
    func increaseTimer() {
        timeMilSec++
        
        if timeMilSec == 100 {
            timeSec++
            timeMilSec = 0
        }
        if timeSec == 60 {
            timeMin++
            timeSec = 0
        }
        if timeMin == 60 {
            timeHr++
            timeMin = 0
        }
        
        if timeHr == 0 {
            
            if timeMin == 0 {
                timerLabel.text = String(timeSec) + "." + String(timeMilSec)
            }
            else {
                timerLabel.text = String(timeMin) + ":" + String(timeSec) + "." + String(timeMilSec)
            }
        }
        else {
            timerLabel.text = String(timeHr) + ":" + String(timeMin) + ":" + String(timeSec) + "." + String(timeMilSec)
        }
        
        timerLabel.text = String(timeMin) + ":" + String(timeSec) + "." + String(timeMilSec)
    }
    
    @IBAction func playButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButton(sender: AnyObject) {      //"reset" time to 0
        timer.invalidate()
        timeSec = 0
        timeMin = 0
        timerLabel.text = "0.0"
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

