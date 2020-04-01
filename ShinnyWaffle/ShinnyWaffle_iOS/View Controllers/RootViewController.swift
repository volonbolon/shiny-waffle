//
//  RootViewController.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit

public class RootViewController: NiblessNavigationController {
    let mainViewController: MainViewController

    init(mainViewController: MainViewController) {
        self.mainViewController = mainViewController

        super.init()
    }

    override public func viewDidLoad() {
        super.viewDidLoad()

        self.title = NSLocalizedString("Quotes", comment: "Quotes")

        self.pushViewController(self.mainViewController, animated: false)
    }
}
