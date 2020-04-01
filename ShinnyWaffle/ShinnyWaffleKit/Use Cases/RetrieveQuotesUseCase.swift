//
//  RetrieveQuotesUseCase.swift
//  ShinnyWaffleTests
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public class RetrieveQuotesUseCase: UseCase {
    public init() {}
    
    public func start() {
        print("RetrieveQuotesUseCase")
    }
}

public protocol RetrieveQuotesUseCaseFactory {
    func makeMainUseCase() -> UseCase
}
