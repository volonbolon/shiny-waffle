//
//  QuotesViewController.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit
import ShinnyWaffleKit

public class QuotesViewController: NiblessViewController {
    let userInterface: QuotesRootView
    let retrieveQuotesFactory: RetrieveQuotesUseCaseFactory
    let observable: Observable<Quote?>

    public init(userInterface: QuotesRootView,
                retrieveQuotesFactory: RetrieveQuotesUseCaseFactory,
                observable: Observable<Quote?>) {
        self.userInterface = userInterface
        self.retrieveQuotesFactory = retrieveQuotesFactory
        self.observable = observable

        super.init()
    }

    override public func loadView() {
        super.loadView()

        self.view = self.userInterface
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        let useCase = self.retrieveQuotesFactory.makeRetrieveQuotesUseCase(observable: self.observable)
        useCase.start()
    }
}

extension QuotesUXResponder {
    func presentQuotes() {
        
    }
}
