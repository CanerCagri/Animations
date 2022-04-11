//
//  ViewController.swift
//  Animations
//
//  Created by Caner Çağrı on 11.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var currentAnimation = 0

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }

    @IBAction func tapped(_ sender: UIButton) {
        
        sender.isHidden = true
        
        // UIView.animate(withDuration: 1, delay: 0, options: []) {
        
        //Giving sprint cool animation
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: []) {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            case 1:
                self.imageView.transform = .identity
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -80, y: -100)
            case 3:
                self.imageView.transform = .identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
            case 5:
                self.imageView.transform = .identity
            case 6:
                self.imageView.alpha = 0.1
            case 7:
                self.imageView.alpha = 1
            default:
                break
            }
        } completion: { finished in
            sender.isHidden = false
        }
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
}

