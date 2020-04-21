//
//  FourthVC.swift
//  Testigg
//
//  Created by Sai Sandeep on 21/04/20.
//  Copyright © 2020 iOS Revisited. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissToSecondVC(_ sender: Any) {
        self.dismissTo(vc: SecondVC(), count: nil, animated: true)
    }
    
    @IBAction func dismissToRootVC(_ sender: Any) {
        self.dismissTo(vc: self.view.window?.rootViewController, count: nil, animated: true)
    }
    
    @IBAction func dismiss3ViewControllers(_ sender: Any) {
        self.dismissTo(vc: nil, count: 3, animated: true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
