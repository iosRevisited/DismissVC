//
//  FirstVC.swift
//  Testigg
//
//  Created by Sai Sandeep on 21/04/20.
//  Copyright © 2020 iOS Revisited. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "secondVC") {
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
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



extension UIViewController {
    
    func dismissTo(vc: UIViewController?, count: Int?, animated: Bool, completion: (() -> Void)? = nil) {
        var loopCount = 0
        var dummyVC: UIViewController? = self
        for _ in 0..<(count ?? 100) {
            loopCount = loopCount + 1
            dummyVC = dummyVC?.presentingViewController
            if let dismissToVC = vc {
                if dummyVC != nil && dummyVC!.isKind(of: dismissToVC.classForCoder) {
                    dummyVC?.dismiss(animated: animated, completion: completion)
                }
            }
        }
        
        if count != nil {
            dummyVC?.dismiss(animated: animated, completion: completion)
        }
    }
    
}
