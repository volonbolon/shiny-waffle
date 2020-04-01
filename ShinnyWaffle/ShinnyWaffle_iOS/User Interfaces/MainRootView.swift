//
//  MainRootView.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit

public class MainRootView: NiblessView {
    private var hierarchyNotReady = true

    let button: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        let title = NSLocalizedString("Get quote", comment: "Get quote")
        button.setTitle(title, for: .normal)

        button.setTitleColor(UIColor.black, for: .normal)

        return button
    }()

    public override func didMoveToWindow() {
        super.didMoveToWindow()

        guard hierarchyNotReady else {
            return
        }

        self.constructHierarchy()
        self.activateConstraints()

        self.backgroundColor = UIColor.white

        self.hierarchyNotReady = false
    }
}

extension MainRootView { // MARK: - Helpers
    fileprivate func constructHierarchy() {
        self.addSubview(self.button)
    }

    private func activateButtonConstraints() {
        let xConstraint = self.button.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor)
        let yConstraint = self.button.centerYAnchor.constraint(equalTo: layoutMarginsGuide.centerYAnchor)
        let toActivate = [
            xConstraint,
            yConstraint
        ]
        NSLayoutConstraint.activate(toActivate)
    }

    fileprivate func activateConstraints() {
        self.activateButtonConstraints()
    }
}
