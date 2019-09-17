//
//  AlertService.swift
//  CustomAlerts
//
//  Created by Nazim Uddin on 17/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class AlertService {
    func alert(title:String, body:String, actionTitle:String, completion:@escaping ()->Void) -> AlertViewController {
        let storyboard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        let alertVC = storyboard.instantiateViewController(withIdentifier: "AlertVC") as! AlertViewController
        alertVC.alertTitle = title
        alertVC.alertBody = body
        alertVC.actionButtonTitle = actionTitle
        alertVC.buttonAction = completion
        return alertVC
    }
}
