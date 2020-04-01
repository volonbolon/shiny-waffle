//
//  Either.swift
//  ShinnyWaffleKit
//
//  Created by Ariel Rodriguez on 01/04/2020.
//  Copyright © 2020 Ariel Rodriguez. All rights reserved.
//

import Foundation

public enum Either<T1, T2> {
    case Left(T1)
    case Right(T2)
}
