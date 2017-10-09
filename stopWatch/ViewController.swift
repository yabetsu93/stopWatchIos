//
//  ViewController.swift
//  stopWatch
//
//  Created by Jabes Pauya on 10/8/29 H.
//  Copyright © 29 Jabes Pauya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var time = 0;
    
    //timer
    var timer = Timer();
    
    @IBOutlet weak var lbl: UILabel!
    
    @objc func action()
    {
        time += 1
        lbl.text = String(time)
    }
    
    @IBAction func _btnStart(_ sender: UIButton){
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func _btnStop(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func _btnReset(_ sender: UIButton){
        timer.invalidate()
        time = 0
        lbl.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

