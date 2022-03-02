//
//  ViewController.swift
//  biotests
//
//  Created by Jeffrey Tabios on 3/2/22.
//

import UIKit
import LocalAuthentication

final class FirstVC: UIViewController {
    
    lazy var authorizeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitle("Authorize", for: .normal)
        button.addTarget(self, action: #selector(authorize), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        view.addSubview(authorizeButton)
    }
    
    @objc func authorize() {
        let context = LAContext()
        var error: NSError? = nil
        
        //If FaceID/TouchID capable
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "authorize with touch id"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { [weak self] success, error in
                guard success, error == nil else {
                    //Fail
                    return
                }
                
                //Success
            }
        } else {
            //Not available for FaceId/TouchID (Old device)
        }
    }

}

