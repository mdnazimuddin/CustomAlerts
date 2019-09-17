//
//  AlertViewController.swift
//  CustomAlerts
//
//  Created by Nazim Uddin on 17/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    var alertTitle:String?
    var alertBody:String?
    var actionButtonTitle:String?
    var buttonAction: (()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    func setupView(){
        titleLabel.text = alertTitle!
        bodyLabel.text = alertBody!
        actionButton.setTitle(actionButtonTitle!, for: .normal)
    }
    @IBAction func didTapCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func didTapActionButton(_ sender: Any) {
        buttonAction!()
        dismiss(animated: true, completion: nil)
    }
    

}
