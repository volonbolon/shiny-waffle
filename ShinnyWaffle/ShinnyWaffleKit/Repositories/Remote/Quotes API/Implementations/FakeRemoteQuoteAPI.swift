//
//  FakeRemoteQuoteAPI.swift
//  ShinnyWaffleKit
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public struct FakeRemoteQuoteAPI: RemoteQuoteAPI {
    public init() {}

    public func getQuotes(completionHandler: QuoteRemoteAPICompletionHandler) {
        let quote = Quote(text: "Some Text", author: "some author")
        let result = Either<RemoteQuoteError, Quote>.Right(quote)
        completionHandler(result)
    }
}
