//
//  ViewController.swift
//  tutorialUIImageViewAnimation
//
//  Created by Eirik Madland on 15.11.2015.
//  Copyright © 2015 DevApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatedImage: UIImageView!
    
    @IBAction func toggleAnimationPressed(sender: AnyObject) {
        
        if animatedImage.isAnimating() {
            animatedImage.stopAnimating()
        } else {
            animatedImage.startAnimating()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var animationFrames = [UIImage]()
        
        /*
        animationFrames.append(UIImage(named: "Bars-0")!)
        animationFrames.append(UIImage(named: "Bars-1")!)
        animationFrames.append(UIImage(named: "Bars-2")!)
        animationFrames.append(UIImage(named: "Bars-3")!)
        animationFrames.append(UIImage(named: "Bars-2")!)
        animationFrames.append(UIImage(named: "Bars-1")!)
        */

        /*
        if let image = UIImage(named: "Bars-0") { 
            animationFrames.append(image) 
        }
        
        if let image = UIImage(named: "Bars-1") { 
            animationFrames.append(image) 
        }
        
        if let image = UIImage(named: "Bars-2") {
            animationFrames.append(image)
        }
        
        if let image = UIImage(named: "Bars-3") {
            animationFrames.append(image)
        }
        
        if let image = UIImage(named: "Bars-2") {
            animationFrames.append(image)
        }
        
        if let image = UIImage(named: "Bars-1") {
            animationFrames.append(image)
        }
        */

        for i in 0...3 {
            if let image = UIImage(named: "Bars-\(i)") {
                animationFrames.append(image)
            }
        }
        
        for (var i = 2; i > 0; i--) {
            if let image = UIImage(named: "Bars-\(i)") {
                animationFrames.append(image)
            }
        }

        animatedImage.animationImages = animationFrames
        animatedImage.animationDuration = 0.7
        animatedImage.startAnimating()
    }

}

