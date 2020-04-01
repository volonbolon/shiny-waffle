//
//  QuotestViewModel.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation
import ShinnyWaffleKit

public class QuotesViewModel {
    weak var uxResponder: QuotesUXResponder?
    weak var observable: Observable<Quote?>?

    init(observableQuote: Observable<Quote?>) {
        self.observable = observableQuote
    }

    @IBAction func presentQuotes() {
        self.uxResponder?.presentQuotesInSafari()
    }
}

extension Selector {
    static let QuotesViewModelpresentQuotes = #selector(QuotesViewModel.presentQuotes)
}
