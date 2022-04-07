//
//  UIViewControllerExtension.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 21/02/22.
//

import Foundation
import UIKit

extension UIViewController {
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
