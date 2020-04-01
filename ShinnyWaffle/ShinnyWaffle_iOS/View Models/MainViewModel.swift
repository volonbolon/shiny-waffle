//
//  MainViewModel.swift
//  ShinnyWaffle_iOS
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public class MainViewModel {
    weak var uxResponder: MainUXResponder?

    @IBAction func retrieveRandomQuote() {
        self.uxResponder?.retrieveRandomQuote()
    }
}

extension Selector {
    static let MainViewModelRetrieveRandomQuote = #selector(MainViewModel.retrieveRandomQuote)
}
