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

    public func getQuotes(completionHandler: @escaping QuoteRemoteAPICompletionHandler) {
        let url = URL(string: "https://quotepark.com/authors/antoine-de-saint-exupery/")!
        let quote = Quote(text: "Here is my secret. It is very simple. It is only with the heart that one can see rightly; What is essential is invisible to the eye.",
                          author: "Antoine de Saint-Exupéry",
                          URL: url)
        let result = Either<RemoteQuoteError, Quote>.Right(quote)
        let deadline = DispatchTime.now() + 0.5
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            completionHandler(result)
        }
    }
}
