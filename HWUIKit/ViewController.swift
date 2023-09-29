//
//  ViewController.swift
//  HWUIKit
//
//  Created by Evgeny Likhachev on 29/9/23.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var monitorClour: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monitorClour.layer.cornerRadius = 15
    }
    
//MARK: - IBActions

}

