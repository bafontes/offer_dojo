//
//  AppDelegate.swift
//  offers_dojo
//
//  Created by Bruno Andres Fontes on 22/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        setInitialFlow()
        return true
    }

    private func setInitialFlow() {
        let controller = CustomTabbarController()
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}

