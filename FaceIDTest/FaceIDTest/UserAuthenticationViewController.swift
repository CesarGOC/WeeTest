//
//  UserAuthenticationViewController.swift
//  FaceIDTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 29/01/24.
//

import UIKit
import LocalAuthentication

class UserAuthenticationViewController: UIViewController {
    
    let context = LAContext()
    var error: NSError?
    
    init() {
        super.init(nibName: nil, bundle: nil)
        isModalInPresentation = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error){
        let reason = "Identify yourself to new view"
        context.evaluatePolicy(.deviceOwnerAuthentication,
                               localizedReason: reason) { success, error in
            DispatchQueue.main.async {
                    if success {
                        self.dismiss(animated: true)
                    }
                }
            }
        }
        
    }
    
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        let containerStackView = UIStackView()
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        containerStackView.axis = .vertical
        containerStackView.spacing = 8
        
        let authenticationLabel = UILabel()
        authenticationLabel.translatesAutoresizingMaskIntoConstraints = false
        authenticationLabel.adjustsFontForContentSizeCategory = true
        authenticationLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        authenticationLabel.numberOfLines = 0
        authenticationLabel.text = "Please authenticate to enter app"
        
        var authenticationButtonConfiguration = UIButton.Configuration.filled()
        authenticationButtonConfiguration.title = "Authenticate"
        
        let authenticationButton = UIButton(configuration: authenticationButtonConfiguration)
        authenticationButton.translatesAutoresizingMaskIntoConstraints = false
        authenticationButton.addTarget(self, action: #selector(authenticateButtonTapped), for: .touchUpInside)
        
        view.addSubview(containerStackView)
        
        containerStackView.addArrangedSubview(authenticationLabel)
        containerStackView.addArrangedSubview(authenticationButton)
        
        NSLayoutConstraint.activate([
            containerStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8)
        ])
    }
    
    @objc
    private func authenticateButtonTapped() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error){
        let reason = "Identify yourself to new view"
        context.evaluatePolicy(.deviceOwnerAuthentication,
                               localizedReason: reason) { success, error in
            DispatchQueue.main.async {
                    if success {
                        self.dismiss(animated: true)
                    }
                }
            }
        }
    }
    

    

}
