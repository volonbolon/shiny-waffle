//
//  QuotesViewController.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit

public class QuotesViewController: NiblessViewController {
    let userInterface: QuotesRootView

    public init(userInterface: QuotesRootView) {
        self.userInterface = userInterface

        super.init()
    }

    override public func loadView() {
        super.loadView()

        self.view = self.userInterface
    }
}
