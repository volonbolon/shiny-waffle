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

    public func makeRemoteAPI() -> RemoteQuoteAPI {
        return FakeRemoteQuoteAPI()
    }

    public func makeRootViewController() -> RootViewController {
        let mainViewController = self.makeMainViewController()
        let rootViewController = RootViewController(mainViewController: mainViewController)

        return rootViewController
    }

    public func makeMainViewController() -> MainViewController {
        let mainViewModel = MainViewModel()
        let userInterface = MainRootView(viewModel: mainViewModel)
        let quotesFactory = {
            return self.makeQuotesViewController()
        }
        let mainViewController = MainViewController(userInterface: userInterface,
                                                    quotesViewControllerFactory: quotesFactory)
        mainViewModel.uxResponder = mainViewController

        return mainViewController
    }

    public func makeQuotesViewController() -> QuotesViewController {
        let observable = Observable<Quote?>(nil)

        let viewModel = QuotesViewModel(observableQuote: observable)
        let userInterface = QuotesRootView(viewModel: viewModel)

        let viewController = QuotesViewController(userInterface: userInterface,
                                                  retrieveQuotesFactory: self,
                                                  observable: observable)

        viewModel.uxResponder = viewController

        return viewController
    }
}

extension AppDependencyContainer: RetrieveQuotesUseCaseFactory {
    public func makeRetrieveQuotesUseCase(observable: Observable<Quote?>) -> UseCase {
        let remoteAPI = self.makeRemoteAPI()
        let useCase = RetrieveQuotesUseCase(remoteAPI: remoteAPI,
                                            observable: observable)
        return useCase
    }
}
