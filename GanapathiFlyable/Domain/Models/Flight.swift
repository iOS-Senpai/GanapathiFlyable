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
    let flightNumber: String
    let origin: String
    let destination: String
    let departureTime: Date
    let arrivalTime: Date
    let price: Double
}
