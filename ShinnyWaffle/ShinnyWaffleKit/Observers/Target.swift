//
//  Target.swift
//  ShinnyWaffleKit
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public class Target {
    public var onValueChanged: (() -> Void)?
    @objc public func valueChanged() {
        onValueChanged?()
    }

    public init() {}
}
