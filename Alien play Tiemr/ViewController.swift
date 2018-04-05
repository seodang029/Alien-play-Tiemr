//
//  ViewController.swift
//  Animation with Timer
//  Created by 김종현 on 2018. 4. 2..
//  Copyright © 2018년 김종현. All rights reserved.
import UIKit

class ViewController: UIViewController {
    
    var ch = true
    var d = true
    var counter = 1
    // Timer 객체 생성
    var myTimer = Timer()
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }
    
    @IBAction func play(_ sender: Any) {
        
        if ch == true {
            myTimer.invalidate()
            ch = false
        } else if ch == false {
            myTimer = Timer.scheduledTimer(timeInterval:  0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
            ch = true
    }
}
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
}

