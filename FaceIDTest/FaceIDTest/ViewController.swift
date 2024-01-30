//
//  ViewController.swift
//  FaceIDTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 29/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        faceIDGlobal = UserDefaults.standard.bool(forKey: "switchState")
        if faceIDGlobal{
            let userAuthentication = UserAuthenticationViewController()
            userAuthentication.modalPresentationStyle = .fullScreen
            navigationController?.present(userAuthentication,animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


}

