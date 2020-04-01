//
//  RemoteQuoteAPI.swift
//  ShinnyWaffleKit
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public enum RemoteQuoteError: Error {
    case connectionError
    case parsingError
}

public typealias QuoteRemoteAPICompletionHandler = (Either<RemoteQuoteError, Quote>) -> Void

public protocol RemoteQuoteAPI {
    func getQuotes(completionHandler: @escaping QuoteRemoteAPICompletionHandler)
}
