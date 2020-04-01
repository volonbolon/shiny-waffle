//
//  Quote.swift
//  ShinnyWaffleKit
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public struct Quote: Equatable, Codable {
    public let text: String
    public let author: String
    public let URL: URL
}

extension Quote: CustomStringConvertible {
    public var description: String {
        return "\(self.text) - \(self.author)"
    }
}
