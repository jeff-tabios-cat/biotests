//
//  SecondVC.swift
//  biotests
//
//  Created by Jeffrey Tabios on 3/2/22.
//

import UIKit

final class SecondVC: UIViewController {
    
    lazy var dismissButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(dismissButton)
    }
    
    @objc func dismissView() {
        dismiss(animated: true, completion: nil)
    }
}
