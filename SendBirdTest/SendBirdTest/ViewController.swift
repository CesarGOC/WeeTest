//
//  ViewController.swift
//  SendBirdTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 25/01/24.
//

import UIKit
import SendbirdUIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func chatButtonAction(_ sender: UIButton) {
        let channelListVC = SBUGroupChannelListViewController()
        let naviVC = UINavigationController(rootViewController: channelListVC)
        self.present(naviVC, animated: true)
        
    }
    

}

