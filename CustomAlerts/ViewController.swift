//
//  ViewController.swift
//  CustomAlerts
//
//  Created by Nazim Uddin on 17/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emoji: UILabel!
    
    let alertService = AlertService()
    
    @IBAction func alertBtn(_ sender: Any) {
        let alertVC = alertService.alert(title: "Happy", body: "This is a lot of text in the body and it demonstrates how the label will continue to grow and so will the container", actionTitle: "Confirm") {
            
            self.view.backgroundColor = .darkGray
            self.emoji.text = "😀"
        }
        present(alertVC, animated: true, completion: nil)
    }
    

}

