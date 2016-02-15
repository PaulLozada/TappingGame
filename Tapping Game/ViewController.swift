//
//  ViewController.swift
//  Tapping Game
//
//  Created by Paul Lozada on 2016-02-15.
//  Copyright © 2016 Paul Lozada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var initialCoinValue = 0
    var currentCoinValue = 0
    var setCoinValue = 0
    
    
    @IBOutlet weak var tapsTextField: UITextField!
    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var tapperTitleImage: UIImageView!
    @IBOutlet weak var tapLabel: UILabel!
    @IBOutlet weak var coinOutlet: UIButton!
    
    
    @IBAction func coinButtonPressed(sender: UIButton) {
        coinOutlet.hidden = false
        tapLabel.hidden = false
        currentCoinValue += 1
        tapLabel.text = "Tapped \(currentCoinValue) times"
        
        if setCoinValue == currentCoinValue {
            let alertController = UIAlertController(title: "You have won the game!", message: "CONGRATULATIONS", preferredStyle: .Alert)
            let action = UIAlertAction(title: "Okay", style: .Default, handler: nil)
            alertController.addAction(action)
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func tapNumberTextField(sender: UITextField) {
            setCoinValue = Int(sender.text!)!
    }
    @IBAction func startButtonPressed(sender: UIButton) {
        tapperTitleImage.hidden = true
        tapsTextField.hidden = true
        startButtonOutlet.hidden = true
        coinOutlet.hidden = false
        tapLabel.hidden = false
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coinOutlet.hidden = true
        tapLabel.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

