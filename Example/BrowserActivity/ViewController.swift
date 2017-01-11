//
//  ViewController.swift
//  BrowserActivity
//
//  Created by Raxit Majithiya on 01/11/2017.
//  Copyright (c) 2017 Raxit Majithiya. All rights reserved.
//

import UIKit
import BrowserActivity

class ViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!

    @IBAction func didTapShare(button: UIButton) {
        
        let urlToShare = URL(string: urlTextField.text ?? "")
        let activityViewController = UIActivityViewController(activityItems: [urlToShare as Any], applicationActivities: BrowserActivity.compatibleActivities)
        present(activityViewController, animated: true, completion: nil)
    }

}

