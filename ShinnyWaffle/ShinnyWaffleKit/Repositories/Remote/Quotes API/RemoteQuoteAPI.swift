//
//  RemoteQuoteAPI.swift
//  ShinnyWaffleKit
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

enum RemoteQuoteError: Error {
    case connectionError
    case parsingError
}

typealias RemoteQuoteAPICompletionHandler = (Either<RemoteQuoteError, Quote>) -> Void

public protocol RemoteQuoteAPI {
    func getQuotes(completionHandler: QuoteRemoteAPICompletionHandler)
}
