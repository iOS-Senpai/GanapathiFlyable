//
//  FlightsSearchError.swift
//  GanapathiFlyable
//
//  Created by Pradeep Kumar on 10/09/26.
//

import Foundation

enum FlightsSearchError: Error, LocalizedError {
    case invalidInput
    var errorDescription: String? {
        switch self {
        case .invalidInput: "Please enter both origin and destination."
        }
    }
}
