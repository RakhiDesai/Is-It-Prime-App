//
//  ViewController.swift
//  Is It Prime
//
//Created by Rakhi Desai on 3/14/15.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var numberTextField: UITextField!
  
    @IBOutlet var resultLabel: UILabel!

    @IBAction func clickHere(sender: AnyObject) {
        
        var number = numberTextField.text.toInt()
        
        
        if number != nil && number != 0 {
            
        var isPrime = true
        if number == 1{
            isPrime = false
        }
        if number != 2 && number != 1{
            for var i = 2; i < number; i++ {
                if number! % i == 0 {
                    isPrime = false
                }
            }
            
        }
            if isPrime == true {
                resultLabel.text = "\(number!) is prime!"
            } else {
                resultLabel.text = " \(number!) is not prime!"
            }
        

        } else {
            resultLabel.text = "Please enter a number in the box"
        }
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

