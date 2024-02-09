//
//  NewViewController.swift
//  NetworkTest
//
//  Created by César Alejandro Guadarrama Ortega on 09/02/24.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let test = NetworkSpeedTest()
        test.networkSpeedTestStop()
        // Do any additional setup after loading the view.
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
