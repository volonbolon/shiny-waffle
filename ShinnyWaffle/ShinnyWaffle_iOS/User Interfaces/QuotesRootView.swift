//
//  QuotesRootView.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import UIKit
import ShinnyWaffleUIKit

public class QuotesRootView: NiblessView {
    private var hierarchyNotReady = true
    let viewModel: QuotesViewModel

    init(viewModel: QuotesViewModel) {
        self.viewModel = viewModel

        super.init(frame: .zero)
    }

    let button: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        let title = NSLocalizedString("Open is Safari", comment: "Open is Safari")
        button.setTitle(title, for: .normal)

        button.setTitleColor(UIColor.black, for: .normal)

        return button
    }()

    let label: UILabel = {
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    public override func didMoveToWindow() {
        super.didMoveToWindow()

        guard hierarchyNotReady else {
            return
        }

        self.constructHierarchy()
        self.activateConstraints()
        self.bindViewModel()

        self.backgroundColor = UIColor.white

        self.button.addTarget(self.viewModel,
                              action: .MainViewModelRetrieveRandomQuote,
                              for: .touchUpInside)

        self.hierarchyNotReady = false
    }
}

extension QuotesRootView { // MARK: - Helpers
    fileprivate func bindViewModel() {
        self.viewModel.observable?.bind { (quote) in
            self.label.text = quote?.description
        }
    }

    fileprivate func constructHierarchy() {
        self.addSubview(self.button)
        self.addSubview(self.label)
    }

    private func activateButtonConstraints() {
        let top = self.button.topAnchor.constraint(equalTo: self.label.bottomAnchor, constant: 20)
        let yConstraint = self.button.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor)
        let toActivate = [
            top,
            yConstraint
        ]
        NSLayoutConstraint.activate(toActivate)
    }

    private func activateLabelConstraints() {
        let xConstraint = self.label.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor)
        let yConstraint = self.label.centerYAnchor.constraint(equalTo: layoutMarginsGuide.centerYAnchor)
        let leading = self.label.leadingAnchor.constraint(greaterThanOrEqualTo: layoutMarginsGuide.leadingAnchor,
                                                          constant: 12)
        let trailing = self.label.trailingAnchor.constraint(greaterThanOrEqualTo: layoutMarginsGuide.trailingAnchor,
                                                            constant: 12)
        let toActivate = [
            xConstraint,
            yConstraint,
            leading,
            trailing
        ]
        NSLayoutConstraint.activate(toActivate)
    }

    fileprivate func activateConstraints() {
        self.activateButtonConstraints()
        self.activateLabelConstraints()
    }
}
