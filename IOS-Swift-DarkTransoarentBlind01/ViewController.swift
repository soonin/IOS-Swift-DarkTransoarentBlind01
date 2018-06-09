//
//  ViewController.swift
//  IOS-Swift-DarkTransoarentBlind01
//
//  Created by Pooya on 2018-06-09.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentOpt: UISegmentedControl!
    @IBOutlet weak var showBlindBtn: UIButton!
    
    let handelIn = HandleHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showBlindBtn.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(callColoreBlind)))
        
    }

    @objc func callColoreBlind()  {
        
        switch self.segmentOpt.selectedSegmentIndex {
        case 0:
            handelIn.handleTransBlind(hexColor: "1f49a1")   // blue
        case 1:
            handelIn.handleTransBlind(hexColor: "183e2c")  // green
        case 2:
            handelIn.handleTransBlind(hexColor: "d40018")  // red
        case 3:
            handelIn.handleTransBlind(hexColor: "ff99cc")  // pink
        case 4:
            handelIn.handleTransBlind(hexColor: "FFFF00")  // yello
        case 5:
            handelIn.handleTransBlind(hexColor: "000000")  // Black
        default:
            handelIn.handleTransBlind()
        }
        
    }
    

    override func viewDidAppear(_ animated: Bool) {
        handelIn.handleTransBlind()
    }
    

}

