//
//  AppDelegate.swift
//  ShinnyWaffle
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffle_iOS

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let injectionContainer = AppDependencyContainer()
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow()
        self.window = window

        self.setupMainViewController()

        return true
    }
}

extension AppDelegate { // MARK: - Helpers
    fileprivate func setupMainViewController() {
        let mainViewController = injectionContainer.makeMainViewController()
        self.setUpWindow(withRootViewController: mainViewController)
    }

    private func setUpWindow(withRootViewController rootViewController: UIViewController) {
        guard let window = self.window else {
            fatalError("Unable to attach the window")
        }
        window.frame = UIScreen.main.bounds
        window.makeKeyAndVisible()
        window.rootViewController = rootViewController
    }
}

