//
//  ViewController.swift
//  EggTimer
//
//  Created by Naidu Shravan on 10/2/16.
//  Copyright © 2016 snaidu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 210

    @IBOutlet var result: UILabel!
    
    func decreaseTimer() {
        
        time -= 1
        result.text = String(time)
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func minusTen(sender: AnyObject) {
        
        if time > 10 {
        time -= 10
        }
        
    }
    
    @IBAction func plusTen(sender: AnyObject) {
        
        if time < 200 {
            time += 10
        }
        
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        
        time = 210
        
        
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

