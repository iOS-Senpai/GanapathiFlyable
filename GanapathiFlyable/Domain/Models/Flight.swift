//
//  Flight.swift
//  GanapathiFlyable
//
//  Created by Pradeep Kumar on 10/09/26.
//

import Foundation

struct Flight: Sendable, Identifiable {
    let id: UUID
    let airline: String
    let origin: String
    let destination: String
    let arrival: String
    let departure: String
    let price: String
}
