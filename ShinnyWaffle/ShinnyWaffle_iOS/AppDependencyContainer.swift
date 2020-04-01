//
//  AppDependencyContainer.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation
import ShinnyWaffleKit

public struct AppDependencyContainer {
    public init() {}

    public func makeRootViewController() -> RootViewController {
        let mainViewController = self.makeMainViewController()
        let rootViewController = RootViewController(mainViewController: mainViewController)

        return rootViewController
    }

    public func makeMainViewController() -> MainViewController {
        let mainViewModel = MainViewModel()
        let userInterface = MainRootView(viewModel: mainViewModel)
        let mainViewController = MainViewController(userInterface: userInterface, retrieveQuotesUseCaseFactory: self)
        mainViewModel.uxResponder = mainViewController

        return mainViewController
    }
}
extension AppDependencyContainer: RetrieveQuotesUseCaseFactory {
    public func makeMainUseCase() -> UseCase {
        let useCase = RetrieveQuotesUseCase()
        return useCase
    }
}
