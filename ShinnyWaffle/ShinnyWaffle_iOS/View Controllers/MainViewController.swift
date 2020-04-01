//
//  MainViewController.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit
import ShinnyWaffleKit

public typealias QuotesViewControllerFactory = () -> QuotesViewController

public class MainViewController: NiblessViewController {
    let userInterface: MainRootView
    let quotesFactory: QuotesViewControllerFactory

    public init(userInterface: MainRootView,
                quotesViewControllerFactory: @escaping QuotesViewControllerFactory) {
        self.userInterface = userInterface
        self.quotesFactory = quotesViewControllerFactory

        super.init()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public override func loadView() {
        super.loadView()

        self.view = self.userInterface
    }
}

extension MainViewController: MainUXResponder {
    func presentQuotes() {
        let viewController = self.quotesFactory()

        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
