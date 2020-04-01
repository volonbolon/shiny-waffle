//
//  RetrieveQuotesUseCase.swift
//  ShinnyWaffleTests
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public class RetrieveQuotesUseCase: UseCase {
    let remoteAPI: RemoteQuoteAPI

    public init(remoteAPI: RemoteQuoteAPI) {
        self.remoteAPI = remoteAPI
    }
    
    public func start() {
        self.remoteAPI.getQuotes { (result) in
            switch result {
            case .Left(let error):
                print(error)
            case .Right(let quote):
                print(quote)
            }
        }
    }
}

public protocol RetrieveQuotesUseCaseFactory {
    func makeRetrieveQuotesUseCase() -> UseCase
}
