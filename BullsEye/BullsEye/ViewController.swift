//
//  ViewController.swift
//  BullsEye
//
//  Created by Piyush Gupta on 18/09/18.
//  Copyright © 2018 Piyush Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello World", message: "This is my first App", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okay!", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
}

