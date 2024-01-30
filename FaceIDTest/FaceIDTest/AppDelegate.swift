//
//  AppDelegate.swift
//  FaceIDTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 29/01/24.
//

import UIKit
import LocalAuthentication

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Crear y configurar la ventana principal
            window = UIWindow(frame: UIScreen.main.bounds)
            let rootViewController = ViewController() // Reemplaza con tu controlador principal
            window?.rootViewController = rootViewController
            window?.makeKeyAndVisible()
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationWillEnterForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {

        showFaceIDAuthentication()
    }
    
    func showFaceIDAuthentication() {
//        let context = LAContext()
//        // Verificar si el dispositivo soporta Face ID y si hay datos biométricos registrados
//        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
//            let reason = "Identify yourself with Face ID"
//            // Mostrar la autenticación con Face ID
//            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
//                                   localizedReason: reason) { success, error in
//                DispatchQueue.main.async {
//                    if success {
//                        // Autenticación exitosa, puedes realizar acciones adicionales aquí
//                        print("Autenticación exitosa con Face ID")
//                    } else {
//                        // Autenticación fallida, puedes manejarlo según tus necesidades
//                        print("Error en la autenticación con Face ID: \(error?.localizedDescription ?? "Unknown error")")
//                    }
//                }
//            }
//        }
    }
}

