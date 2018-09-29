//
//  ViewController.swift
//  AutoLayout
//
//  Created by Piyush Gupta on 25/09/18.
//  Copyright © 2018 Piyush Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This curly brace is a closure or an anonymous function
    let cakeImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "cake"))
        // This enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Entry point in app.
        self.view.addSubview(cakeImageView)
        setupLayout()
    }
    
    private func setupLayout() {
        cakeImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        cakeImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        cakeImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        cakeImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

