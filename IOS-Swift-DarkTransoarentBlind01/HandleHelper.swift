//
//  HandleHelper.swift
//  IOS-Swift-DarkTransoarentBlind01
//
//  Created by Pooya on 2018-06-09.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class HandleHelper: NSObject {
    
    let blindView = UIView()
    
    func handleTransBlind(hexColor : String = "000000" , alpha : CGFloat = 0.5 , myDuration: Double = 0.5 )  {
        
        if let window = UIApplication.shared.keyWindow {
            
            blindView.backgroundColor = UIColor(hex: hexColor , alpha : alpha)
            
            blindView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handelDismiss)))
            
            window.addSubview(blindView)
            blindView.frame = window.frame
            blindView.alpha = 0
            
            UIView.animate(withDuration: myDuration) {
                self.blindView.alpha = 1
            }

            print("Blind On!")
        } else {
            print("Window error!!")
        }
    } // end of func
    
    @objc func handelDismiss()  {
        UIView.animate(withDuration: 0.5) {
            self.blindView.alpha = 0
        }
    }
    
}
