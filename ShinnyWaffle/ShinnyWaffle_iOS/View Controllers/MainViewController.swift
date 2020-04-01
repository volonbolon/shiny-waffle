//
//  MainViewController.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit

public class MainViewController: NiblessViewController {
    let userInterface: MainRootView

    public init(userInterface: MainRootView) {
        self.userInterface = userInterface

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
    func retrieveRandomQuote() {
        fatalError("Not implemented yet")
    }
}
