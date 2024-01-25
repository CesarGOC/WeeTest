//
//  AppDelegate.swift
//  SendBirdTest
//
//  Created by Cesar Alejandro Guadarrama Ortega on 25/01/24.
//

import UIKit
import SendbirdUIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let APP_ID = "0563FBAC-92AA-4F95-B97F-C7718A4D8FE8"    // Specify your Sendbird application ID.
        SendbirdUI.initialize(applicationId: APP_ID) { // This is the origin.
                // Initialization of SendbirdUIKit has started.
                // Show a loading indicator.
            } migrationHandler: {
                // DB migration has started.
            } completionHandler: { error in
                // If DB migration is successful, proceed to the next step.
                // If DB migration fails, an error exists.
                // Hide the loading indicator.
            }
        
        // Case 1: USER_ID only
        SBUGlobals.currentUser = SBUUser(userId: "Hola")
        // Case 2: Specify all fields
        SBUGlobals.currentUser = SBUUser(userId: "Hola", nickname: "CesarGOC", profileURL:"https//cesar.com")

        
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


}

