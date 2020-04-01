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
    let observable: Observable<Quote?>

    public init(remoteAPI: RemoteQuoteAPI, observable: Observable<Quote?>) {
        self.remoteAPI = remoteAPI
        self.observable = observable
    }
    
    public func start() {
        self.remoteAPI.getQuotes { (result) in
            switch result {
            case .Left(let error):
                print(error)
            case .Right(let quote):
                self.observable.value = quote
            }
        }
    }
}

public protocol RetrieveQuotesUseCaseFactory {
    func makeRetrieveQuotesUseCase(observable: Observable<Quote?>) -> UseCase
}
