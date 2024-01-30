//
//  ButtonAccessViewController.swift
//  FaceIDTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 29/01/24.
//

import UIKit
import LocalAuthentication

class ButtonAccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func faceIDButtonAction(_ sender: UIButton) {
        let context = LAContext()
        var error: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error){
        let reason = "Identify yourself to new view"
        context.evaluatePolicy(.deviceOwnerAuthentication,
                               localizedReason: reason) { success, error in
            DispatchQueue.main.async {
                    if success {
                        self.navigationController?.pushViewController(SuccessViewController(), animated: true)
                    }
                }
            }
        }
    }
    
    func showPasscodeEntryScreen() {
//        let passcodeEntryViewController = PasscodeEntryViewController() // Reemplaza con el nombre real de tu controlador de ingreso de código de acceso
//        self.navigationController?.pushViewController(passcodeEntryViewController, animated: true)
    }
}
