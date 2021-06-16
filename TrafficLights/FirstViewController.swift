//
//  FirstViewController.swift
//  TrafficLights
//
//  Created by Apple on 16/06/2021.
//

import UIKit

class FirstViewController: ViewController {

    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var yellowTextField: UITextField!
    
    @IBOutlet weak var greenTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func goToSecondPress(_ sender: Any) {
        let secondVC = SecondViewController()
        guard let redTime = redTextField.text, let yellowTime = yellowTextField.text, let greenTime = greenTextField.text else { return }
        
        secondVC.data2.greenTime = Double(greenTime) ?? 0
        secondVC.data2.yellowTime = Double(yellowTime) ?? 0
        secondVC.data2.redTime = Double(redTime) ?? 0
            
        secondVC.modalPresentationStyle = .fullScreen
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    
}
