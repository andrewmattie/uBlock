//
//  SafariExtensionViewController.swift
//  uBlock Origin Extension
//
//  Created by Andrew Mattie on 7/24/19.
//  Copyright © 2019 Mattie Apps. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

    @IBAction func powerButton(_ sender: NSButton) {
        print("Powering on/off")
    }
    
    @IBAction func settings(_ sender: NSButton) {
        
    }
}
