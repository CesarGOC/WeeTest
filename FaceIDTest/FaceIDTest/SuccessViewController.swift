//
//  SuccessViewController.swift
//  FaceIDTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 29/01/24.
//

import UIKit

class SuccessViewController: UIViewController {
    
    @IBOutlet weak var switchFaceID: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        faceIDGlobal = UserDefaults.standard.bool(forKey: "switchState")
        // Cargar el estado del switch desde UserDefaults
        switchFaceID.isOn = faceIDGlobal
        
    }

    @IBAction func switchActiveFaceID(_ sender: UISwitch) {
        // Guardar el estado del switch en UserDefaults
        UserDefaults.standard.set(sender.isOn, forKey: "switchState")
    }
    
    

}
