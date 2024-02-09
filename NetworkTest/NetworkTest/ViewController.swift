//
//  ViewController.swift
//  NetworkTest
//
//  Created by César Alejandro Guadarrama Ortega on 08/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var conectionLabel: UILabel!
    
    
    let test = NetworkSpeedTest()

    override func viewDidLoad() {
        super.viewDidLoad()
        test.delegate = self
        test.networkSpeedTestStop()
        test.networkSpeedTestStart(UrlForTestSpeed: "https://weeqp.azurewebsites.net/QP/WeePatient/API")
    }
    
    func internetConection(text: String){
        DispatchQueue.main.async {
            self.conectionLabel.text = text
        }
    }

    @IBAction func newViewButtonAction(_ sender: UIButton) {
        navigationController?.pushViewController(NewViewController(), animated: true)
        test.networkSpeedTestStop()
    }
    
}

extension ViewController:NetworkSpeedProviderDelegate{
    func callWhileSpeedChange(networkStatus: NetworkStatus) {
        switch networkStatus {
        case .poor:
            
            internetConection(text: "Internet Malo")
                break
        case .good:
            internetConection(text: "Internet Bueno")
                break
        case .disConnected:
                break
        }
        
    }
    

}

