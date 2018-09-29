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
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\nSome other string with different attributes", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 13)]))
        
        textView.attributedText = attributedText
        textView.textAlignment = .center
        // by default editing is allowed so we disable it generally
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Entry point in app.
        self.view.addSubview(descriptionTextView)
        setupLayout()
    }
    
    private func setupLayout() {
        let halfScreenView: UIView = UIView()
        self.view.addSubview(halfScreenView)
        halfScreenView.translatesAutoresizingMaskIntoConstraints = false
        halfScreenView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        halfScreenView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        halfScreenView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        halfScreenView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
        // cake image constraints
        halfScreenView.addSubview(cakeImageView)
        cakeImageView.centerXAnchor.constraint(equalTo: halfScreenView.centerXAnchor).isActive = true
        cakeImageView.centerYAnchor.constraint(equalTo: halfScreenView.centerYAnchor).isActive = true
        cakeImageView.heightAnchor.constraint(equalTo: halfScreenView.heightAnchor, multiplier: 0.5).isActive = true
        
        // descriptiontext contraints
        descriptionTextView.topAnchor.constraint(equalTo: halfScreenView.bottomAnchor, constant: 100).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 24).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -24).isActive = true
        descriptionTextView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

