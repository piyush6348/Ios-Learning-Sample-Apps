//
//  ViewController.swift
//  Self Segue
//
//  Created by Piyush Gupta on 21/09/18.
//  Copyright © 2018 Piyush Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backgroundColor: UIColor = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = backgroundColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "test" {
            let viewController:ViewController = segue.destination as! ViewController
            viewController.backgroundColor = .green
            
        }
    }


}

