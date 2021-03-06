//
//  QuotesUXResponder.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation
import ShinnyWaffleKit

protocol QuotesUXResponder: class {
    var observable: Observable<Quote?> { get }
    func presentQuotesInSafari()
}
