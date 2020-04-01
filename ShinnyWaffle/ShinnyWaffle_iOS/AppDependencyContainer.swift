//
//  AppDependencyContainer.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public struct AppDependencyContainer {
    public init() {}
    public func makeMainViewController() -> MainViewController {
        let userInterface = MainRootView()
        let mainViewController = MainViewController(userInterface: userInterface)

        return mainViewController
    }
}
