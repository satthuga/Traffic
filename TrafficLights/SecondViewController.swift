//
//  SecondViewController.swift
//  TrafficLights
//
//  Created by Apple on 16/06/2021.
//

import UIKit

class SecondViewController: ViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!

    struct data {
        var redTime : Double = 0
        var yellowTime: Double = 0
        var greenTime: Double = 0
    }
    
    var data2 = data()

    var timer : Timer!
    var timerRed: Timer!
    var timerYellow: Timer!
    var timerGreen: Timer!
    
    override func viewDidLoad() {
        let red = data2.redTime
        let yellow = data2.yellowTime
        let green = data2.greenTime
        
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        timer = Timer.scheduledTimer(timeInterval: red + green + yellow, target: self, selector: #selector(lightTime), userInfo: nil, repeats: true)
        
    }
    
    @objc func lightTime() {
        timerRed = Timer.scheduledTimer(timeInterval: data2.redTime, target: self, selector: #selector(redLightTime), userInfo: nil, repeats: false)
            
        timerYellow = Timer.scheduledTimer(timeInterval: data2.yellowTime, target: self, selector: #selector(yellowLightTime), userInfo: nil, repeats: false)
        
        timerGreen = Timer.scheduledTimer(timeInterval: data2.greenTime, target: self, selector: #selector(greenLightTime), userInfo: nil, repeats: false)
            
            
        }
    
    @objc func redLightTime() {
        redView.backgroundColor = UIColor.red
        yellowView.backgroundColor = UIColor.lightGray
        greenView.backgroundColor = UIColor.lightGray
    }
    
    @objc func yellowLightTime() {
        redView.backgroundColor = UIColor.lightGray
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.lightGray
    }
    @objc func greenLightTime() {
        redView.backgroundColor = UIColor.lightGray
        yellowView.backgroundColor = UIColor.lightGray
        greenView.backgroundColor = UIColor.green
    }


    @IBAction func resetPress(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func toFirstPress(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
